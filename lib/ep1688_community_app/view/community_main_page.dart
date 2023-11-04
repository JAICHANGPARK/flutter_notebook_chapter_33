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
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: IndexedStack(
        index: menuIndex,
        children: [
          Column(
            children: [
              Divider(
                color: Colors.grey,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
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
              onPressed: () {},
              icon: Icon(
                Icons.home_filled,
              ),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.explore_outlined,
              ),
              color: Colors.grey,
            ),
            Badge(
              label: Text(""),
              child: IconButton(
                icon: Icon(
                  Icons.newspaper,
                ),
                onPressed: () {},
              ),
            ),
            Badge(
              label: Text(""),
              child: IconButton(
                icon: Icon(
                  Icons.chat,
                ),
                onPressed: () {},
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
