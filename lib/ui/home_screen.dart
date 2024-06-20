import 'package:firebase_notification_1/firebase-services/notification_services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationService notificationService = NotificationService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationService.requestNotificationPermission();
    notificationService.firebaseInit(context);
    notificationService.setupInteractMessage(context);

// for device token
    notificationService.getDeviceToken().then((value) {
      print("Device token print hua h jiiiiiiiii");
      print(value);
    });
    // to find refersh token
    // notificationService.isTokenRefresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
