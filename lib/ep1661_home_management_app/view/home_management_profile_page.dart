import 'package:flutter/material.dart';

class HomeManagementProfilePage extends StatefulWidget {
  const HomeManagementProfilePage({super.key});

  @override
  State<HomeManagementProfilePage> createState() => _HomeManagementProfilePageState();
}

class _HomeManagementProfilePageState extends State<HomeManagementProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
              ),
              child: Center(
                child: Icon(Icons.keyboard_arrow_left),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("Dream Walker"),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                          ),
                          Text("Seoul, Republic of Korea"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blueAccent,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Icon(
                              Icons.phone_outlined,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blueAccent,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Icon(
                              Icons.phone_outlined,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Text("About"),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              maxLines: 3,
            ),
            Divider(),
            Text("BADGES"),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blueAccent,
                          ),
                          color: Colors.blue[50]
                        ),
                        padding: EdgeInsets.all(9),
                        child: Icon(Icons.lock_open),
                      )
                    ],
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
