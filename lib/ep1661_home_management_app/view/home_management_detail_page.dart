import 'package:flutter/material.dart';


class HomeManagementDetailPage extends StatefulWidget {
  const HomeManagementDetailPage({super.key});

  @override
  State<HomeManagementDetailPage> createState() => _HomeManagementDetailPageState();
}

class _HomeManagementDetailPageState extends State<HomeManagementDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
