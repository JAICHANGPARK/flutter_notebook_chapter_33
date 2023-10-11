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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  height: 52,
                  color: Colors.blue,
                ),
                Text(
                  "Single room in sunny apartment.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: Colors.grey[400],
                    ),
                    Text(
                      "Seoul, Republic of korea",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Posted 2 days ago",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 42,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.blueAccent,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Call owner"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                           color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Book room"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
