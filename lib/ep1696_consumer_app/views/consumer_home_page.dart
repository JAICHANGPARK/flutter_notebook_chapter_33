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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dream Walker"),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "@Dreamwalker",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                      ),
                      color: Colors.pink,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings_outlined,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
