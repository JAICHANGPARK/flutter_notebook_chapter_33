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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(
                      height: 16,
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
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dream Walker",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                    ),
                                    Text("Seoul, Republic of Korea"),
                                  ],
                                ),
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
                                    padding: EdgeInsets.all(6),
                                    child: Icon(
                                      Icons.phone_outlined,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Icon(
                                      Icons.chat_outlined,
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
                    Divider(
                      height: 32,
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      maxLines: 3,
                    ),
                    Divider(
                      height: 32,
                    ),
                    Text(
                      "BADGES",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[200]!,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                    ),
                                    color: Colors.blue[50]),
                                padding: EdgeInsets.all(9),
                                child: Icon(Icons.lock_open),
                              ),
                              Text("Bronze"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.blue[50]),
                                padding: EdgeInsets.all(9),
                                child: Icon(Icons.lock_open),
                              ),
                              Text("Bronze"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.blue[50]),
                                padding: EdgeInsets.all(9),
                                child: Icon(Icons.lock_open),
                              ),
                              Text("Bronze"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.blue[50]),
                                padding: EdgeInsets.all(9),
                                child: Icon(Icons.lock_open),
                              ),
                              Text("Bronze"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.blue[50]),
                                padding: EdgeInsets.all(9),
                                child: Icon(Icons.lock_open),
                              ),
                              Text("Bronze"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      "PERFORMANCE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.all(9),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("RESPONSE RATE"),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "90%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: [
                                Text("RESPONSE RATE"),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "90%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: [
                                Text("RESPONSE RATE"),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "90%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "More listing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 280,
                margin: EdgeInsets.only(left: 16),
                color: Colors.blue,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      width: 320,
                      margin: EdgeInsets.only(right: 12),
                      color: Colors.orange,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
