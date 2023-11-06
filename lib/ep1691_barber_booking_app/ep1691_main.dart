import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1691_barber_booking_app/views/barber_booking_main_page.dart';

void main() {
  runApp(BarberBookingApp());
}

class BarberBookingApp extends StatelessWidget {
  const BarberBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BarberBookingMainPage(),
    );
  }
}
