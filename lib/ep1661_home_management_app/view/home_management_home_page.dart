import 'package:flutter/material.dart';

class HomeManagementHomePage extends StatefulWidget {
  const HomeManagementHomePage({super.key});

  @override
  State<HomeManagementHomePage> createState() => _HomeManagementHomePageState();
}

class _HomeManagementHomePageState extends State<HomeManagementHomePage> {
  List<String> tabItems = ["All", "Room", "Roommate", "Events"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Colors.grey[300]!,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: const BoxDecoration(color: Colors.blue),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "YOUR LOCATION",
                                  style: TextStyle(
                                    color: Colors.grey[400]!,
                                    fontSize: 12,
                                  ),
                                ),
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
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.notifications_none),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 84,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12)
                ),
                margin: const EdgeInsets.symmetric(vertical: 16),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on_outlined),
                          const Text("Find on the map"),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300]!,
                            ),
                            child: IconButton(
                              constraints: BoxConstraints(
                                maxHeight: 42,
                                maxWidth: 42,
                              ),
                              iconSize: 24,
                              icon: const Icon(Icons.keyboard_arrow_right),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Text("Best for you"),
              Row(
                children: tabItems
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300]!,
                          ),
                        ),
                        child: Text(e),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                              ),
                              Text("Dream Walker"),
                              Icon(Icons.favorite_border),
                            ],
                          ),
                          Text("Sigle private room in sunny apt."),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                              ),
                              Text(
                                "Seoul, Republic of Korea",
                              ),
                              Text(
                                "\$150/",
                              ),
                              Text(
                                "mo",
                              )
                            ],
                          ),
                          SizedBox(
                            height: 42,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                    ),
                                    child: Row(
                                      children: [
                                        Text("View details"),
                                        Icon(Icons.keyboard_arrow_right),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Book room",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
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
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "add",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "add",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "add",
          ),
        ],
      ),
    );
  }
}
