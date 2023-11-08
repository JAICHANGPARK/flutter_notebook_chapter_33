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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(16),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "LATEST VISIT",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Gap(16),
                    SizedBox(
                      height: 92,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 360,
                              margin: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Container(
                                    width: 72,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.4),
                                      ),
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/07/20/10/51/beauty-salon-2521943_1280.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.yellow,
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "PRO",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  const Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "DREAM WALKER",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 16,
                                            ),
                                            Text(
                                              "4.8",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              " 114 reviews",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const Gap(48),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "NEARBY BARBERSHOPS",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 340,
                      margin: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 200,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      border: Border.all(
                                        color: Colors.white10,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 12,
                                          top: 12,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black.withOpacity(0.4),
                                                borderRadius: BorderRadius.circular(4)),
                                            padding: EdgeInsets.all(4),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color: Colors.yellow,
                                                ),
                                                Text(
                                                  "4.8",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Gap(8),
                                const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "OPEN NOW",
                                          style: TextStyle(
                                            color: Colors.yellow,
                                          )),
                                      TextSpan(
                                          text: "8:00~21:00",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                ),
                                Gap(6),
                                const Text(
                                  "THE FLUTTER FACTORY",
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                                Gap(4),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Text(
                                      "0.7km",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(7),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white38,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.bookmark_add_outlined,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Gap(12),
                                    Expanded(
                                      child: Container(
                                        height: 48,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "BOOK NOW",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "BEST BARBERS",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 340,
                      margin: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 200,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
