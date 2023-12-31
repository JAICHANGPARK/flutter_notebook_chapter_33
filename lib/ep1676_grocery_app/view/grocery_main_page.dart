import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1676_grocery_app/view/grocery_detail_page.dart';

class GroceryMainPage extends StatefulWidget {
  const GroceryMainPage({super.key});

  @override
  State<GroceryMainPage> createState() => _GroceryMainPageState();
}

class _GroceryMainPageState extends State<GroceryMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 246, 246, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 24,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 2, top: 2, bottom: 2),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "2464 Royal Ln, Mesa",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Your address",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(32),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "02",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IndexedStack(
                      index: menuIndex,
                      children: [
                        /// Home
                        DefaultTabController(
                          length: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Card(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 16),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                        suffixIcon: Icon(Icons.search_outlined),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Categories",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.grey,
                                      ),
                                      child: const Text("View All"),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 84,
                                // color: Colors.blueAccent,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 84,
                                      margin: const EdgeInsets.only(right: 12),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Stack(
                                        children: [
                                          Positioned(
                                            bottom: 4,
                                            left: 0,
                                            right: 0,
                                            child: Center(
                                              child: Text(
                                                "Snacks",
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
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: TabBar(
                                  isScrollable: true,
                                  labelStyle: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  labelColor: Colors.black,
                                  unselectedLabelStyle: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey,
                                  ),
                                  unselectedLabelColor: Colors.grey,
                                  indicatorColor: Colors.transparent,
                                  tabs: [
                                    Tab(
                                      text: "Flash Sale",
                                    ),
                                    Tab(
                                      text: "Popular",
                                    ),
                                    Tab(
                                      text: "New Arrival",
                                    ),
                                    Tab(
                                      text: "Snacks",
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const GroceryDetailPage(),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                height: 240,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: Card(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(12.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                                child:
                                                                    Container()),
                                                            const Text(
                                                                "Mushroom Sauce"),
                                                            const Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "24Oz"),
                                                                    Text(
                                                                        "\$8.92"),
                                                                  ],
                                                                ),
                                                                CircleAvatar()
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    )),
                                                    Expanded(
                                                      child: Card(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(12.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                  child:
                                                                      Container()),
                                                              const Text(
                                                                  "Mushroom Sauce"),
                                                              const Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "24Oz"),
                                                                      Text(
                                                                          "\$8.92"),
                                                                    ],
                                                                  ),
                                                                  CircleAvatar()
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 240,
                                              margin: const EdgeInsets.only(
                                                  left: 12, top: 12),
                                              child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    width: 240,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 8),
                                                    decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16)),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16),
                                                    child: const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "MEAL PLAN\nWITH GROCERY\nSTAY ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 24,
                                                              color:
                                                                  Colors.white),
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
                                      Container(
                                        color: Colors.blue,
                                      ),
                                      Container(
                                        color: Colors.blue,
                                      ),
                                      Container(
                                        color: Colors.blue,
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ),

                        /// Categories
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 16),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      suffixIcon: Icon(Icons.search_outlined),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                "Categories",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Expanded(
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 8,
                                      mainAxisSpacing: 8,
                                    ),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),

                        /// Collections
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio: 0.79,
                              children: [
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: GridView.builder(
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 4,
                                              crossAxisSpacing: 4,
                                            ),
                                            itemBuilder: (context, index) {
                                              return Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "Daily Meal",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text("18 products")
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: GridView.builder(
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 4,
                                              crossAxisSpacing: 4,
                                            ),
                                            itemBuilder: (context, index) {
                                              return Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "Daily Meal",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text("18 products")
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: GridView.builder(
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 4,
                                              crossAxisSpacing: 4,
                                            ),
                                            itemBuilder: (context, index) {
                                              return Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "Daily Meal",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text("18 products")
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.green[50],
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "Create Collection",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "Today",
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 24,
              right: 24,
              bottom: 24,
              child: Container(
                height: 72,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400]!,
                      blurRadius: 12,
                      spreadRadius: 2,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    menuIndex == 0
                        ? Container(
                            decoration: BoxDecoration(
                              color: Colors.green[50],
                              borderRadius: BorderRadius.circular(32),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            child: const Center(
                              child: Text(
                                "HOME",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                menuIndex = 0;
                              });
                            },
                            icon: const Icon(Icons.home_filled),
                          ),
                    menuIndex == 1
                        ? Container(
                            decoration: BoxDecoration(
                              color: Colors.green[50],
                              borderRadius: BorderRadius.circular(32),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            child: const Center(
                              child: Text(
                                "Categories",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                menuIndex = 1;
                              });
                            },
                            icon: const Icon(Icons.apps),
                          ),
                    menuIndex == 2
                        ? Container(
                            decoration: BoxDecoration(
                              color: Colors.green[50],
                              borderRadius: BorderRadius.circular(32),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            child: const Center(
                              child: Text(
                                "Collections",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                menuIndex = 2;
                              });
                            },
                            icon: const Icon(Icons.folder),
                          ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          menuIndex = 3;
                        });
                      },
                      icon: const Icon(Icons.person_outline),
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
