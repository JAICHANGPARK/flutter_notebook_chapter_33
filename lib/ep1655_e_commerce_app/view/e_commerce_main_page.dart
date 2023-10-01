import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class EcommerceMainPage extends StatefulWidget {
  const EcommerceMainPage({super.key});

  @override
  State<EcommerceMainPage> createState() => _EcommerceMainPageState();
}

class _EcommerceMainPageState extends State<EcommerceMainPage> {
  List<String> tabItems = [
    "All",
    "Hoodie",
    "Jacket",
    "Pants",
    'T-Shirt',
    "Shirt",
    "Outwear",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                          child: const TextField(),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: const Badge(
                          child: Icon(Icons.notifications_none),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: const Badge(
                          child: Icon(Icons.shopping_bag_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 140,
                  margin: EdgeInsets.fromLTRB(16, 16, 0, 16),
                  color: Colors.blue,
                ),
                DotsIndicator(dotsCount: 4),
                Expanded(
                  child: DefaultTabController(
                    length: tabItems.length,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.deepOrange,
                          indicatorColor: Colors.transparent,
                          tabs: tabItems
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
                            Container(),
                            Container(),
                            Container(),
                            Container(),
                            Container(),
                            Container(),
                            Container(),
                          ],
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: BottomNavigationBar(

                  backgroundColor: Colors.black,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home"
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.explore_outlined),
                        label: "Discover"
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
