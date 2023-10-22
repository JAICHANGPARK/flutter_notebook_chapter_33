import 'package:flutter/material.dart';

class GroceryMainPage extends StatefulWidget {
  const GroceryMainPage({super.key});

  @override
  State<GroceryMainPage> createState() => _GroceryMainPageState();
}

class _GroceryMainPageState extends State<GroceryMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 246, 1),
      body: Stack(
        children: [
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 8, spreadRadius: 2),
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home_filled),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.apps),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.folder),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outline),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
