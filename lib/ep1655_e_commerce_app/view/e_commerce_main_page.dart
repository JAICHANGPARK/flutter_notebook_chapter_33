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
                  color: Colors.blue,
                ),
                DotsIndicator(dotsCount: 4),
                Expanded(
                  child: DefaultTabController(
                    length: tabItems.length,
                    child: Column(
                      children: [
                        TabBar(
                          
                          tabs: tabItems
                              .map(
                                (e) => Tab(
                                  text: e,
                                ),
                              )
                              .toList(),
                        ),
                        Expanded(child: TabBarView(
                          children: [
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
            )
          ],
        ),
      ),
    );
  }
}
