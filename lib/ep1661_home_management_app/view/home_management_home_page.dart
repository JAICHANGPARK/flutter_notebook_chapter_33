import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1661_home_management_app/view/home_management_detail_page.dart';
import 'package:flutter_notebook_chapter_33/ep1661_home_management_app/view/home_management_profile_page.dart';

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
                              decoration:
                                  const BoxDecoration(color: Colors.blue),
                            ),
                            const SizedBox(
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
                                const Row(
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
                    borderRadius: BorderRadius.circular(12)),
                margin: const EdgeInsets.symmetric(vertical: 16),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on_outlined),
                          const Text("Find on the map"),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300]!,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: IconButton(
                              constraints: const BoxConstraints(
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
              const Text(
                "🔥 Best for you",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: tabItems
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300]!,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(e),
                        ),
                      )
                      .toList(),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.grey,
                      height: 32,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeManagementProfilePage(),
                                    ),
                                  );
                                },
                                child: const CircleAvatar(
                                  radius: 12,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text("Dream Walker"),
                              const Spacer(),
                              const Icon(Icons.favorite_border),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Sigle private room in sunny apt.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 14,
                                color: Colors.grey[600],
                              ),
                              Text(
                                "Seoul, Republic of Korea",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "\$150/",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const Text(
                                "mo",
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeManagementDetailPage()));
                                  },
                                  child: Container(
                                    height: 42,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 8),
                                    child: const Row(
                                      children: [
                                        Text("View details"),
                                        Spacer(),
                                        Icon(Icons.keyboard_arrow_right),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Book room",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
        items: const [
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
