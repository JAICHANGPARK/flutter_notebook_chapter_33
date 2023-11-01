import 'package:flutter/material.dart';

class TransportMainPage extends StatefulWidget {
  const TransportMainPage({super.key});

  @override
  State<TransportMainPage> createState() => _TransportMainPageState();
}

class _TransportMainPageState extends State<TransportMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
