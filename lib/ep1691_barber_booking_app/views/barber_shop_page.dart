import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://cdn.pixabay.com/photo/2020/05/24/02/00/barber-shop-5212059_1280.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(
                            Icons.bookmark_add_outlined,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(4)),
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "PRO BARBER",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Gap(8),
                          Text(
                            "DREAM WALKER",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Gap(8),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Gap(8),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Gap(8),
                              Text(
                                "114 reviews",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Gap(12),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "FRIDAY, AUGUST 25",
                                      style: TextStyle(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Gap(4),
                                    Text(
                                      "15:00~16:10",
                                      style: TextStyle(color: Colors.white, fontSize: 24),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Gap(12),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(48),
                border: Border.all(
                  color: Colors.white38,
                ),
              ),
              padding: const EdgeInsets.all(24),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: const Center(
                  child: Text(
                    "BOOK NOW",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
