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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome Back!"),
                        Text(
                          "Dream Walker 👋",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                    ),
                  )
                ],
              ),
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
              icon: const Icon(Icons.explore_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.explore_outlined),
            ),
            const CircleAvatar(
              backgroundColor: Colors.indigo,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.download_for_offline_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline),
            ),
          ],
        ),
      ),
    );
  }
}
