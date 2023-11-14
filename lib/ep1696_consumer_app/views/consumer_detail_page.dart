import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Gap(12),
                      Text(
                        "@Dreamwalker",
                        style: TextStyle(fontSize: 16),
                      ),
                      Gap(12),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text(
                          "Purchased",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: Column(
                      children: [
                        Container(
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2023/10/10/15/12/landscape-8306693_1280.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 12,
                                top: 12,
                                child: Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 12,
                                bottom: 12,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: Text(
                                    "Fantasy",
                                    style: TextStyle(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("AUDIBLE"),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                    ),
                                    child: Text("Updated"),
                                  ),
                                  Text("\$12.98"),
                                ],
                              ),
                              Gap(12),
                              Text("The Flutter Dev"),
                              Gap(12),
                              Row(
                                children: [
                                  Icon(Icons.chat),
                                  Gap(8),
                                  Text("10"),
                                  Gap(8),
                                  Icon(Icons.thumb_up_alt_outlined),
                                  Gap(8),
                                  Text("200"),
                                  Spacer(),
                                  Text(
                                    "2 DAYS AGO",
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
