import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1681_discover_app/view/discover_mobile_main_page.dart';

void main() => runApp(const DiscoverMobileApp());

class DiscoverMobileApp extends StatelessWidget {
  const DiscoverMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DiscoverMobileMainPage(),
    );
  }
}
