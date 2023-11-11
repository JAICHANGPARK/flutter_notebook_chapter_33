import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1696_consumer_app/views/consumer_home_page.dart';

void main() {
  runApp(ConsumerApp());
}

class ConsumerApp extends StatelessWidget {
  const ConsumerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConsumerHomeApp(),
    );
  }
}
