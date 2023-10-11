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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 360,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 52,
            color: Colors.blue,
          ),
          Text("Single room in sunny apartment."),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
              ),
              Text("Seoul, Republic of korea")
            ],
          ),
          Text("Posted 2 days ago"),
          Container(
            height: 52,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.blueAccent,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        Text("Call owner"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "ROOM OVERVIEW",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
