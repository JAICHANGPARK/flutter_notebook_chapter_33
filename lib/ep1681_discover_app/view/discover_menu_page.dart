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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            margin: EdgeInsets.all(16),
            color: Colors.green,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 32,
                  right: 32,
                  bottom: 0,
                  child: Card(
                    elevation: 8,
                    child: Center(),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 16,
                  right: 16,
                  bottom: 16,
                  child: Card(
                    elevation: 8,
                    child: Center(),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 32,
                  child: Card(
                    elevation: 8,
                    child: Center(),
                  ),
                )
              ],
            ),
          ),
          Text("CATEGORIES"),
        ],
      ),
    );
  }
}
