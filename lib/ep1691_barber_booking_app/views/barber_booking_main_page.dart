import 'package:flutter/material.dart';

class BarberBookingMainPage extends StatefulWidget {
  const BarberBookingMainPage({super.key});

  @override
  State<BarberBookingMainPage> createState() => _BarberBookingMainPageState();
}

class _BarberBookingMainPageState extends State<BarberBookingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.grey,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "THURSDAY, AUGUST 24",
        ),
        leading: IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HEY,",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                    color: Colors.white,
                  ),
                ),
                Text("DREAM")
              ],
            )
          ],
        ),
      ),
    );
  }
}
