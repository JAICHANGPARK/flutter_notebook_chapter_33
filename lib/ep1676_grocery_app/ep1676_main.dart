import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1676_grocery_app/view/grocery_main_page.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GroceryMainPage(),
    );
  }
}
