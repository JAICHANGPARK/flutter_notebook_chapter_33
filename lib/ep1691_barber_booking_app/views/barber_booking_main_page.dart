import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        title: const Text(
          "THURSDAY, AUGUST 24",
        ),
        leading: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
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
                  Text(
                    "DREAM",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Colors.white.withOpacity(0.15),
              ),
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.yellow,
                  hintText: "SEARCH",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Gap(16),
            Text(
              "LATEST VISIT",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(8),
            SizedBox(
              height: 72,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 360,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
