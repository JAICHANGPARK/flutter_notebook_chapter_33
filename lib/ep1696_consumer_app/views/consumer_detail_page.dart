import 'package:flutter/material.dart';

class ConsumerDetailPage extends StatefulWidget {
  const ConsumerDetailPage({super.key});

  @override
  State<ConsumerDetailPage> createState() => _ConsumerDetailPageState();
}

class _ConsumerDetailPageState extends State<ConsumerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text("Fantasy"),
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Text("@Dreamwalker"),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                    ),
                    child: Text(
                      "Purchased",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
