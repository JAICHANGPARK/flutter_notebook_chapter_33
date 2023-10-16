import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class NewAppMainPage extends StatefulWidget {
  const NewAppMainPage({super.key});

  @override
  State<NewAppMainPage> createState() => _NewAppMainPageState();
}

class _NewAppMainPageState extends State<NewAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(),
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 12,
                        ),
                        child: const Text(
                          "THE NEWS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  const Badge(
                    child: Icon(
                      Icons.notifications,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              // color: Colors.blue,
              padding: const EdgeInsets.only(left: 16),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: SizedBox(
                        width: 72,
                        child: Column(
                          children: [
                            Expanded(
                                child: Stack(
                              children: [
                                const Positioned.fill(
                                  child: CircleAvatar(
                                    // radius: 32,
                                    child: Icon(Icons.play_circle),
                                  ),
                                ),
                                Positioned(
                                  bottom: 4,
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: Container(
                                      decoration:
                                          BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(24)),
                                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                      child: const Text(
                                        "LIVE",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text("Conference")
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 16,
                            top: 24,
                            bottom: 24,
                            right: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
                                  maxLines: 5,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor",
                                  maxLines: 2,
                                ),
                                Text("1 hour ago")
                              ],
                            ),
                          ),
                          Positioned(
                              right: 8,
                              bottom: 8,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.play_circle,
                                ),
                                onPressed: () {},
                                iconSize: 72,
                              ))
                        ],
                      ),
                    ),
                    DotsIndicator(
                      dotsCount: 4,
                      decorator: DotsDecorator(
                        size: const Size(14, 14),
                        activeSize: const Size(14, 14),
                        activeColor: Colors.black,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    Container(
                      height: 42,
                      // color: Colors.blueAccent,
                      margin: const EdgeInsets.only(left: 8, top: 12, bottom: 8),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            margin: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(32)),
                            child: const Center(child: Text("Politics")),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recommendation",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("View All"),
                          )
                        ],
                      ),
                    ),
                    ...List.generate(
                      10,
                      (index) => Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Container(
                                height: 84,
                                width: 120,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,"),
                                  Text("1 hour ago")
                                ],
                              )),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.more_horiz,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.play_circle,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ).toList(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(32),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: const Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.public,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmarks,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
              ),
            )
          ],
        ),
      ),
    );
  }
}
