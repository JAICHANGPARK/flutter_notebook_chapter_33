import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1655_e_commerce_app/view/e_commerce_detail_page.dart';

class EcommerceMainPage extends StatefulWidget {
  const EcommerceMainPage({super.key});

  @override
  State<EcommerceMainPage> createState() => _EcommerceMainPageState();
}

class _EcommerceMainPageState extends State<EcommerceMainPage> {
  int menuIndex = 0;
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
            IndexedStack(
              index: menuIndex,
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
                                borderRadius: BorderRadius.circular(34),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Search", border: InputBorder.none, suffixIcon: Icon(Icons.search)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            foregroundColor: Colors.black,
                            child: const Badge(
                              child: Icon(Icons.notifications_none),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            foregroundColor: Colors.black,
                            child: const Badge(
                              child: Icon(Icons.shopping_bag_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      margin: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                      // color: Colors.blue,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Get your special\nsale up to 50%",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                  decoration:
                                      BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(32)),
                                  child: const Text(
                                    "Shop Now",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
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
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                                  child: GridView.builder(
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2, childAspectRatio: 0.7),
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => const EcommerceDetailPage(),
                                            ),
                                          );
                                        },
                                        child: Card(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                  child: const Stack(
                                                    children: [],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.deepOrange,
                                                        borderRadius: BorderRadius.circular(16),
                                                      ),
                                                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                      child: const Text(
                                                        "Hoodie",
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.symmetric(vertical: 8),
                                                      child: Text("Title Title Title Title Title Title Title Title"),
                                                    ),
                                                    const Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          size: 12,
                                                        ),
                                                        Text("4.8"),
                                                        Spacer(),
                                                        Text(
                                                          "\$17.00",
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.deepOrange,
                                                          ),
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
                                    },
                                  ),
                                ),
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                menuIndex = 0;
                              });
                            },
                            icon: const Icon(Icons.arrow_back),
                          ),
                          const Text("Discover"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      child: PageView.builder(
                        controller: PageController(viewportFraction: 0.8, initialPage: 1),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          suffixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
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
                  onTap: (idx) {
                    setState(() {
                      menuIndex = idx;
                    });
                  },
                  type: BottomNavigationBarType.fixed,
                  currentIndex: menuIndex,
                  backgroundColor: Colors.black,
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: Colors.deepOrange,
                  items: const [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: "Discover"),
                    BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Discover"),
                    BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: "Discover"),
                    BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Discover"),
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
