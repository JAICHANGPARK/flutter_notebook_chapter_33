import 'package:flutter/material.dart';

class DiscoverMenuPage extends StatefulWidget {
  const DiscoverMenuPage({super.key});

  @override
  State<DiscoverMenuPage> createState() => _DiscoverMenuPageState();
}

class _DiscoverMenuPageState extends State<DiscoverMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Discover"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            color: Colors.green,
          ),
          Text("CATEGORIES"),
          
        ],
      ),
    );
  }
}
