import 'package:flutter/material.dart';

class HomeManagementHomePage extends StatefulWidget {
  const HomeManagementHomePage({super.key});

  @override
  State<HomeManagementHomePage> createState() => _HomeManagementHomePageState();
}

class _HomeManagementHomePageState extends State<HomeManagementHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined
            ),
            label: "add",
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.chat_outlined
            ),
            label: "add",
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.person_outline

            ),
            label: "add",
          ),
        ],
      ),
    );
  }
}
