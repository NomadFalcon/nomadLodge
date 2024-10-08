import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:device_info/device_info.dart';
import 'package:package_info/package_info.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class UserHelpers {
  static final UserHelpers _singleton = UserHelpers._internal();

  factory UserHelpers() {
    return _singleton;
  }

  UserHelpers._internal();
  FirebaseFirestore _db = FirebaseFirestore.instance;

  authenticateUser(idToken) async {
    Client client = Client(
      'http://localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager(),
    )..connectivityMonitor = FlutterConnectivityMonitor();

    SessionManager sessionManager = SessionManager(caller: client.modules.auth);
    String? loginError;
    try {
      await sessionManager.initialize();

      await Firebase.initializeApp();
      final authenticationResponse =
          await client.modules.auth.firebase.authenticate(idToken);

      if (authenticationResponse.success) {
        final userInfo = authenticationResponse.userInfo!;
        final authenticationKeyId = authenticationResponse.keyId!;
        final authenticationKey = authenticationResponse.key!;

        // This is very important to have future calls to the client
        // send the session of our logged in user
        await sessionManager.registerSignedInUser(
            userInfo, authenticationKeyId, authenticationKey);
      }
    } catch (e) {
      loginError = e.toString();
    }
    return loginError;
  }

  convertUser(firebase_auth.User user, UserType type) {
    return User(
      //id: user.uid,
      email: user.email!,
      name: user.displayName!,
      //photoURL: user.photoURL!,
      phone: user.phoneNumber,
      userType: type,
    );
  }

  saveUser(firebase_auth.User user) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    int buildNumber = int.parse(packageInfo.buildNumber);
    Map<String, dynamic> userData = {
      "name": user.displayName,
      "email": user.email,
      "last_login": user.metadata.lastSignInTime!.millisecondsSinceEpoch,
      "created_at": user.metadata.creationTime!.millisecondsSinceEpoch,
      "build_number": buildNumber
    };
    final userRef = _db.collection("users").doc(user.uid);
    if ((await userRef.get()).exists) {
      await userRef.update({
        "last_login": user.metadata.lastSignInTime!.millisecondsSinceEpoch,
        "build_number": buildNumber
      });
    } else {
      userRef.set(userData);
    }
    saveDevice(user);
  }

  saveUserRole(String role) async {
    firebase_auth.User? currentUser =
        firebase_auth.FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      final userRef = _db.collection("users").doc(currentUser.uid);
      await userRef.update({"role": role});
    }
  }

  saveDevice(firebase_auth.User user) async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    String deviceId;
    Map<String, dynamic> deviceData;
    if (Platform.isAndroid) {
      final deviceInfo = await deviceInfoPlugin.androidInfo;
      deviceId = deviceInfo.androidId;

      deviceData = {
        "os_version": deviceInfo.version.sdkInt.toString(),
        "platform": "android",
        "model": deviceInfo.model,
        "device": deviceInfo.device
      };
    }
    if (Platform.isIOS) {
      final deviceInfo = await deviceInfoPlugin.iosInfo;
      deviceId = deviceInfo.identifierForVendor;
      deviceData = {
        "os _version": deviceInfo.systemVersion,
        "platform": "ios",
        "model": deviceInfo.model,
        "device": deviceInfo.name,
      };
      final nowMs = DateTime.now().millisecondsSinceEpoch;
      final deviceRef = _db
          .collection("users")
          .doc(user.uid)
          .collection("devices")
          .doc(deviceId);

      if ((await deviceRef.get()).exists) {
        await deviceRef.update({"updated _at": nowMs, "uninstalled": false});
      } else {
        deviceRef.set({
          "created_at": nowMs,
          "updated _at": nowMs,
          "uninstalled": false,
          "id": deviceId,
          "device_info": deviceData
        });
      }
    }
  }

  AppUser? currentAppUser;
  getUserFromAuthUser(firebase_auth.User user) async {
    final userRef = _db.collection("users").doc(user.uid).withConverter(
          fromFirestore: AppUser.fromFirestore,
          toFirestore: (AppUser city, _) => city.toFirestore(),
        );

    final docSnap = await userRef.get();
    currentAppUser = docSnap.data();
  }
}

class AppUser {
  String name;
  String? role;
  String email;

  AppUser({required this.name, this.role, required this.email});

  factory AppUser.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return AppUser(
      name: data?['name'],
      role: data?['role'],
      email: data?['email'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if (role != null) "role": role,
      if (email != null) "email": email,
    };
  }
}
