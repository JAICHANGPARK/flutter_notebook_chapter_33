import 'package:flutter/material.dart';

class GroceryMainPage extends StatefulWidget {
  const GroceryMainPage({super.key});

  @override
  State<GroceryMainPage> createState() => _GroceryMainPageState();
}

class _GroceryMainPageState extends State<GroceryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home_filled),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.apps),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.folder),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.person_outline),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
