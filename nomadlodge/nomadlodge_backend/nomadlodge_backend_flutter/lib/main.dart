import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'serverpod_client.dart';
import 'messaging_service.dart';
import 'widgets/entry_page.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServerpodClient();
 // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 @override
 _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final messagingService = MessagingService();
  @override
  void initState() {
    super.initState();
    //messagingService.init();
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nomadlodge Backend',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EntryPage(title:"Backend", messagingService: messagingService),
    );
  }
}

