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
            icon: Icon(
              Icons.more_horiz,
            ),
          )
        ],
        title: Text("Politics"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              height: 360,
              decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(16)),
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Lorem ipsum",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 72,
            ),
            
            Container(
              height: 64,
              color: Colors.purple,
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2:20"),
                Text("10:00"),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.shuffle)),
                IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous)),
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.pause),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.skip_next)),
                IconButton(onPressed: () {}, icon: Icon(Icons.list)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
