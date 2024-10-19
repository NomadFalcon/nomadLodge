import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../serverpod_client.dart';
import '../messaging_service.dart';
import 'sign_in_page.dart';
import 'menu/dasboard.dart';
import 'user_creation.dart';

import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

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
      
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: sessionManager.isSignedIn ?  (currentUser == null)  ? UserCreationPage() : DashboardPage(key: ValueKey(DashboardPage), currentUser: currentUser!) : const SignInPage(),);
  }
}

