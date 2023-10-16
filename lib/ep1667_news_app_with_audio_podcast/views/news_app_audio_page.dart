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
      ),
    );
  }
}
