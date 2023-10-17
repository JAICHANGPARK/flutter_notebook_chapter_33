import 'package:flutter/material.dart';

class EcommerceMainPage extends StatefulWidget {
  const EcommerceMainPage({super.key});

  @override
  State<EcommerceMainPage> createState() => _EcommerceMainPageState();
}

class _EcommerceMainPageState extends State<EcommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.percent),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Delivery address"),
                        Text("92 High Street, London"),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.notifications_none,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
