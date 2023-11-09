import 'package:flutter/material.dart';

class BarberShopPage extends StatefulWidget {
  const BarberShopPage({super.key});

  @override
  State<BarberShopPage> createState() => _BarberShopPageState();
}

class _BarberShopPageState extends State<BarberShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Column(
              children: [
                Expanded(child: Container(

                )),
                Expanded(child: Container()),
              ],
            ),
          ),
          Positioned(
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
