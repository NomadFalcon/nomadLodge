import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:device_info/device_info.dart';
import 'package:package_info/package_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserHelpers {
  static final UserHelpers _singleton = UserHelpers._internal();

  factory UserHelpers() {
    return _singleton;
  }

  UserHelpers._internal();
  FirebaseFirestore _db = FirebaseFirestore.instance;

  saveUser(User user) async {
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
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      final userRef = _db.collection("users").doc(currentUser.uid);
      await userRef.update({"role": role});
    }
  }

  saveDevice(User user) async {
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
  getUserFromAuthUser(User user) async {
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
