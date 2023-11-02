import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1671_ecommerce_app/view/ecommerce_main_page.dart';

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EcommerceMainPage(),
    );
  }
}
