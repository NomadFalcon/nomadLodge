import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../serverpod_client.dart';
import '../messaging_service.dart';
import 'sign_in_page.dart';
import 'menu/dasboard.dart';
import 'creation/user_creation.dart';

import 'package:device_info_plus/device_info_plus.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key, required this.title, required this.messagingService}) : super();
  
  final MessagingService messagingService;
  final String title;

  @override
  EntryPageState createState() => EntryPageState();
}

class EntryPageState extends State<EntryPage> {
  bool needsToSetupUser = false;
  User? currentUser;
  @override
  void initState() {
    super.initState();
    print("entered entry page");
    // Make sure that we rebuild the page if signed in status changes.
    sessionManager.addListener(() {
      if (sessionManager.isSignedIn) {
        checkForUserSetup();
      } else {
        setState(() {});
      }
      
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkForUserSetup();
    });
    
  }
  
  void checkForUserSetup() async {
     final userIdentier = sessionManager.signedInUser?.userIdentifier;
    if (userIdentier != null){
      final user = await client.user.getUserByAuthIdentifier(userIdentier);
      setState(() {
          currentUser = user;
        });
      if (user != null) {
        if (!kIsWeb) {
          switch (defaultTargetPlatform) {
            case TargetPlatform.iOS : {
              final deviceInfo = DeviceInfoPlugin();
              final iosDeviceInfo = await deviceInfo.iosInfo;
              final deviceToken = await widget.messagingService.getToken();
              if (deviceToken != null) {
                UserDevice userDevice = UserDevice(
                  token: deviceToken,
                  plaform: iosDeviceInfo.systemName,
                  osVersion: iosDeviceInfo.systemVersion,
                  deviceInfo: iosDeviceInfo.model,
                  userId: user.id!,
                  user: user,
              );
              await client.user.addDevice(userDevice);
              }
            }
            case TargetPlatform.android : {
              final deviceInfo = DeviceInfoPlugin();
              final androidDeviceInfo = await deviceInfo.androidInfo;
              final deviceToken = await widget.messagingService.getToken();
              if (deviceToken != null) {
                UserDevice userDevice = UserDevice(
                  token: deviceToken,
                  plaform: androidDeviceInfo.version.baseOS!,
                  osVersion: androidDeviceInfo.version.release,
                  deviceInfo: androidDeviceInfo.model,
                  userId: user.id!,
                  user: user,
              );
              await client.user.addDevice(userDevice);
              }
            }
            default:
              break;
          
          }
          
        }

      }
      
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: sessionManager.isSignedIn ?  (currentUser == null)  ? UserCreationPage(onUserCreated: null, availableUserType: null, isUserForAdditionalUser: false,) : DashboardPage(key: ValueKey(DashboardPage), currentUser: currentUser!, messagingService: widget.messagingService) : const SignInPage(),);
  }
}

