import 'package:flutter/material.dart';

class DiscoverMobileMainPage extends StatefulWidget {
  const DiscoverMobileMainPage({super.key});

  @override
  State<DiscoverMobileMainPage> createState() => _DiscoverMobileMainPageState();
}

class _DiscoverMobileMainPageState extends State<DiscoverMobileMainPage> {
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
        title: Text(
          "Discover",
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: menuTabItems.length,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
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
                tabs: menuTabItems
                    .map(
                      (e) => Tab(
                        text: e,
                      ),
                    )
                    .toList(),
              ),
              
            ],
          ),
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
