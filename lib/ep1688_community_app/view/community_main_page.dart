import 'package:flutter/material.dart';

class CommunityMainPage extends StatefulWidget {
  const CommunityMainPage({super.key});

  @override
  State<CommunityMainPage> createState() => _CommunityMainPageState();
}

class _CommunityMainPageState extends State<CommunityMainPage> {
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
      body: Column(
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_filled,
              ),
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
