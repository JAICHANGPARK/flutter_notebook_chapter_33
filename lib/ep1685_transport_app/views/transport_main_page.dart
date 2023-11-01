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
              Gap(8),
              Container(
                height: 52,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Card(
                        elevation: 6,
                        child: SizedBox(
                          height: 28,
                          width: 28,
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
