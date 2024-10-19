import 'package:firebase_messaging/firebase_messaging.dart';

class MessagingService {

 Future<void> init() async {


   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
     print("onMessage: $message");
   });

   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
     print("onMessageOpenedApp: $message");
   });
 }
 Future<void> requestPermission() async {
   FirebaseMessaging.instance.requestPermission();
 }
  Future<String?> getToken() async{
    final token =  await FirebaseMessaging.instance.getToken();
    return token;
  }
}