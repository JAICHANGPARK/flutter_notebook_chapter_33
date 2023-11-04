import 'package:flutter/material.dart';

class NewsAppAudioPage extends StatefulWidget {
  const NewsAppAudioPage({super.key});

  @override
  State<NewsAppAudioPage> createState() => _NewsAppAudioPageState();
}

class _NewsAppAudioPageState extends State<NewsAppAudioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ),
          )
        ],
        title: const Text("Politics"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              height: 360,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(16)),
            ),
            const SizedBox(
              height: 48,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Lorem ipsum",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            Container(
              height: 64,
              color: Colors.purple,
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2:20"),
                Text("10:00"),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.skip_previous)),
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.pause),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.skip_next)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
