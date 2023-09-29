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
                  SizedBox(
                    width: 8,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome Back!"),
                        SizedBox(
                          height: 4,
                        ),
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
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              height: 360,
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: 140,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Feature Movies"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 140,
                    color: Colors.blue,
                  );
                },
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
