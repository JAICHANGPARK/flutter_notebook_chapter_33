import 'package:flutter/material.dart';

class CommunityMainPage extends StatefulWidget {
  const CommunityMainPage({super.key});

  @override
  State<CommunityMainPage> createState() => _CommunityMainPageState();
}

class _CommunityMainPageState extends State<CommunityMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "FEED",
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
            ),
          ),
          const Center(
            child: Badge(
              label: Text("2"),
              child: Icon(Icons.notifications_none),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: IndexedStack(
              index: menuIndex,
              children: [
                Container(),
                Container(),
                Column(
                  children: [

                    Expanded(
                      child: ListView(
                        children: [

                        ],
                      )
                    ),

                  ],
                ),
                Container(),
                Container(),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 0;
                });
              },
              icon: const Icon(
                Icons.home_filled,
              ),
              color: menuIndex != 0 ? Colors.grey : Colors.orange,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 1;
                });
              },
              icon: const Icon(
                Icons.explore_outlined,
              ),
              color: menuIndex != 1 ? Colors.grey : Colors.orange,
            ),
            Badge(
              label: const Text(""),
              child: IconButton(
                icon: const Icon(
                  Icons.newspaper,
                ),
                onPressed: () {
                  setState(() {
                    menuIndex = 2;
                  });
                },
                color: menuIndex != 2 ? Colors.grey : Colors.orange,
              ),
            ),
            Badge(
              label: const Text("1"),

              child: IconButton(
                icon: const Icon(
                  Icons.chat,
                ),
                onPressed: () {
                  setState(() {
                    menuIndex = 3;
                  });
                },
                color: menuIndex != 3 ? Colors.grey : Colors.orange,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 4;
                });
              },
              icon: const Icon(
                Icons.person,
              ),
              color: menuIndex != 4 ? Colors.grey : Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
