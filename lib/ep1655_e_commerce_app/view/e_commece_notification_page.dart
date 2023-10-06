import 'package:flutter/material.dart';

class EcommerceNotificationPage extends StatefulWidget {
  const EcommerceNotificationPage({super.key});

  @override
  State<EcommerceNotificationPage> createState() => _EcommerceNotificationPageState();
}

class _EcommerceNotificationPageState extends State<EcommerceNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Notifications"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
            child: Badge(
              child: Icon(Icons.notifications_none),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
            child: Badge(
              child: Icon(Icons.notifications_none),
            ),
          ),
        ],
      ),
    );
  }
}
