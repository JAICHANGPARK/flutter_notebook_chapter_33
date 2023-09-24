import 'package:flutter/material.dart';

class MovieStreamingHomePage extends StatefulWidget {
  const MovieStreamingHomePage({super.key});

  @override
  State<MovieStreamingHomePage> createState() => _MovieStreamingHomePageState();
}

class _MovieStreamingHomePageState extends State<MovieStreamingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text("Welcome Back!"),
                    Text("Dream Walker 👋"),
                  ],
                )),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 82,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.explore_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.explore_outlined),
            ),
            CircleAvatar(
              backgroundColor: Colors.indigo,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.download_for_offline_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_outline),
            ),
          ],
        ),
      ),
    );
  }
}
