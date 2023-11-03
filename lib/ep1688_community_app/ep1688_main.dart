import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1688_community_app/view/community_main_page.dart';

void main() {
  runApp(CommunityApp());
}

class CommunityApp extends StatelessWidget {
  const CommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommunityMainPage(),
    );
  }
}
