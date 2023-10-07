import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1661_home_management_app/view/home_management_home_page.dart';

void main() {
  runApp(HomeManagementApp());
}

class HomeManagementApp extends StatelessWidget {
  const HomeManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeManagementHomePage(),
    );
  }
}
