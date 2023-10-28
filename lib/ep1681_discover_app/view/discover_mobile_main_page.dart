import 'package:flutter/material.dart';

class DiscoverMobileMainPage extends StatefulWidget {
  const DiscoverMobileMainPage({super.key});

  @override
  State<DiscoverMobileMainPage> createState() => _DiscoverMobileMainPageState();
}

class _DiscoverMobileMainPageState extends State<DiscoverMobileMainPage> {
  int homeMenuIndex = 0;
  List<String> menuTabItems = [
    "TRENDING",
    "ENTERTAINMENT",
    "TECHNOLOGY",
    "MUSIC",
    "SPORTS",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Discover",
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: DefaultTabController(
        length: menuTabItems.length,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "LIVE NOW",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
            TabBar(
              isScrollable: true,
              indicatorColor: Colors.transparent,
              // indicatorWeight: 0,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              tabs: menuTabItems
                  .map(
                    (e) => Tab(
                      text: e,
                    ),
                  )
                  .toList(),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 220,
                          margin: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 12),
                                width: 300,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 24,
                                      top: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 3,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: 68,
                                        width: 68,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 8,
                                          ),
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16, top: 32),
                          child: Text(
                            "TOP VIDEOS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 92,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          // decoration: BoxDecoration(
                          //   color: Colors.grey,
                          // ),
                          child: Row(
                            children: [
                              Container(
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 8,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("D. Walker"),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("4h ago"),
                                      ],
                                    ),
                                    const Text(
                                      "Title Title Title Title Title Title Title Title Title Title Title ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 4,
                                          width: 120,
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Icon(Icons.visibility),
                                        const Text("289K"),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 92,
                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          // decoration: BoxDecoration(
                          //   color: Colors.grey,
                          // ),
                          child: Row(
                            children: [
                              Container(
                                width: 160,
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 8,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("D. Walker"),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("4h ago"),
                                      ],
                                    ),
                                    const Text(
                                      "Title Title Title Title Title Title Title Title Title Title Title ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 4,
                                          width: 120,
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Icon(Icons.visibility),
                                        const Text("289K"),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 92,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_filled,
                    ),
                    iconSize: 28,
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 28,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.flash_on,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  )
                ],
              ),
              const CircleAvatar(
                radius: 26,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.circle,
                ),
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 28,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.layers,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              const CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
