import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1655_e_commerce_app/view/e_commerce_main_page.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EcommerceMainPage(),
    );
  }
}
