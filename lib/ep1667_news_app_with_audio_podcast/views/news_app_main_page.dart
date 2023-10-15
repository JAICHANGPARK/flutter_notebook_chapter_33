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
              padding: EdgeInsets.only(left: 16),
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
                                Positioned.fill(
                                  child: CircleAvatar(
                                    // radius: 32,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Center(
                                      child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                  ),
                                  child: Text(
                                      "LIVE",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                  ),
                                ),
                                    ))
                              ],
                            )),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Conference")
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 200,
                      color: Colors.blue,
                    ),
                    DotsIndicator(
                      dotsCount: 4,
                      decorator: DotsDecorator(
                        size: const Size(16, 16),
                        activeSize: const Size(16, 16),
                        activeColor: Colors.black,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    Container(
                      height: 52,
                      color: Colors.blueAccent,
                      margin: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Recommendation"),
                          TextButton(
                            onPressed: () {},
                            child: Text("View All"),
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
                              Expanded(child: Column()),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_horiz,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
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
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(32),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
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
              icon: Icon(
                Icons.public,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmarks,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
              ),
            )
          ],
        ),
      ),
    );
  }
}
