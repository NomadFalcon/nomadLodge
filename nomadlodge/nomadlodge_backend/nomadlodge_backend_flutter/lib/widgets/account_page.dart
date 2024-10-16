import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

import '../serverpod_client.dart';



class AccountPage extends StatefulWidget {
  const AccountPage({super.key});


  @override
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  // These fields hold the last result or error message that we've received from
  // the server or null if no result exists yet.
 @override
  void initState() {
    super.initState(); 
    // Make sure that we rebuild the page if signed in status changes.
    sessionManager.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          leading: CircularUserImage(
            userInfo: sessionManager.signedInUser,
            size: 42,
          ),
          title: Text(sessionManager.signedInUser!.userName!),
          subtitle: Text(sessionManager.signedInUser!.email ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              sessionManager.signOut();
            },
            child: const Text('Sign out'),
          ),
        ),
      ],
    );
  }

}


