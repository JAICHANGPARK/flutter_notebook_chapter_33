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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "THURSDAY, AUGUST 24",
        ),
        leading: IconButton(
          icon: Icon(Icons.notifications), onPressed: () {  },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
