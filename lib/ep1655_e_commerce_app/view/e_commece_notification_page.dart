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
        title: Text("Notifications"),
        actions: [

        ],
      ),
    );
  }
}
