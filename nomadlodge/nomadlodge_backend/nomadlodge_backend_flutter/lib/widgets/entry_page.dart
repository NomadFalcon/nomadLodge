import 'package:flutter/material.dart';
import '../serverpod_client.dart';
import 'sign_in_page.dart';
import 'menu/dasboard.dart';
import 'user_creation.dart';

import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key, required this.title});

  final String title;

  @override
  EntryPageState createState() => EntryPageState();
}

class EntryPageState extends State<EntryPage> {
  bool needsToSetupUser = false;
  @override
  void initState() {
    super.initState();

    // Make sure that we rebuild the page if signed in status changes.
    sessionManager.addListener(() {
      setState(() {});
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkForUserSetup();
    });
    
  }

  void checkForUserSetup() async {
     final userIdentier = sessionManager.signedInUser?.userIdentifier;
    if (userIdentier != null){
      final user = await client.user.getUserByAuthIdentifier(userIdentier);
      if(user == null){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  UserCreation()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: sessionManager.isSignedIn ?  const DashboardPage(key: ValueKey(DashboardPage),) : const SignInPage(),);
  }
}

