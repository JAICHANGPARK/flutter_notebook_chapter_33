import 'package:flutter/material.dart';

class HomeManagementHomePage extends StatefulWidget {
  const HomeManagementHomePage({super.key});

  @override
  State<HomeManagementHomePage> createState() => _HomeManagementHomePageState();
}

class _HomeManagementHomePageState extends State<HomeManagementHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.red,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(color: Colors.blue),
                          ),
                          Column(
                            children: [
                              Text("YOUR LOCATION"),
                              Row(
                                children: [
                                  Text("Seoul, Republic of Korea"),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(4)),
                    child: IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Container(
                height: 84,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "add",
          ),
        ],
      ),
    );
  }
}
