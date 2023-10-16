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
      body: Column(
        children: [
          Container(
            height: 320,
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          ),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
          Text("Lorem ipsum"),
          Container(
            height: 64,
            color: Colors.purple,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2:20"),
              Text("10:00"),
            ],
          ),
          Row(
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
    );
  }
}
