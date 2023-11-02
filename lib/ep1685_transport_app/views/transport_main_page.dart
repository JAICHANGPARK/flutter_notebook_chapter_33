import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransportMainPage extends StatefulWidget {
  const TransportMainPage({super.key});

  @override
  State<TransportMainPage> createState() => _TransportMainPageState();
}

class _TransportMainPageState extends State<TransportMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.circle_outlined,
                    ),
                    suffixIcon: Icon(Icons.tune),
                    hintText: "Search",
                  ),
                ),
              ),
              Gap(6),
              Container(
                height: 52,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 6,
                        child: SizedBox(
                          height: 32,
                          width: 32,
                        ),
                      ),
                      Gap(6),
                      Text("Type"),
                      VerticalDivider(
                        width: 24,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        child: Text(
                          "T",
                        ),
                      ),
                      Gap(6),
                      Text("Train"),
                      VerticalDivider(
                        width: 24,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(
                          "T",
                        ),
                      ),
                      Gap(6),
                      Text("Light"),
                      VerticalDivider(
                        width: 24,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        child: Text(
                          "T",
                        ),
                      ),
                      Gap(6),
                      Text("Buses"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        16,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Kings Cross Station",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.grey,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.grey,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.grey,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Lines:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Departing in:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        height: 180,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: SizedBox(
                                width: 200,
                                child: Card(
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.train),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[300]!,
                                                ),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              padding: EdgeInsets.all(2),
                                              child: Text("T4"),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[300]!,
                                                ),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              padding: EdgeInsets.all(2),
                                              child: Text("T3"),
                                            )
                                          ],
                                        ),
                                        Text("Due"),
                                        Text(
                                          "03 Mins",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32,
                                          ),
                                        ),
                                        Text(
                                          "Kings Cross Platform 1",
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.upload),
              label: "Departing",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: "Arriving",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: "Map",
            ),
          ],
        ));
  }
}
