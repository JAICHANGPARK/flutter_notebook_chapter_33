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
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
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
                            decoration: const BoxDecoration(color: Colors.blue),
                          ),
                          const Column(
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
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(4)),
                    child: IconButton(
                      icon: const Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Container(
                height: 84,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                margin: const EdgeInsets.symmetric(vertical: 16),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        const Text("Find on the map"),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300]!,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.keyboard_arrow_right),
                            onPressed: () {},
                          ),
                        )
                      ],
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
                            height: 96,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8)
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
