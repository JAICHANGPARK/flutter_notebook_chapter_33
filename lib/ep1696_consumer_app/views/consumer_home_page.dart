import 'package:flutter/material.dart';

class ConsumerHomeApp extends StatefulWidget {
  const ConsumerHomeApp({super.key});

  @override
  State<ConsumerHomeApp> createState() => _ConsumerHomeAppState();
}

class _ConsumerHomeAppState extends State<ConsumerHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
              ),
              Column(
                children: [
                  Text("Dream Walker"),
                  Text("@Dreamwalker"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
