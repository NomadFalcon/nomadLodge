import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:flutter/material.dart';
import 'serverpod_client.dart';

import 'navigation/router_helper.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeServerpodClient();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
String get initialRoute {
    final isSignedIn = sessionManager.isSignedIn;
    if (!isSignedIn) {
      return '/';
    }
    return '/dashboard';
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initialRoute,
      routes: RouterHelper.getRoutes(
        context,
      ),
    );
  }
}

