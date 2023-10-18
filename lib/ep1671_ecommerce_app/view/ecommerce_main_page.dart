import 'package:flutter/material.dart';

class EcommerceMainPage extends StatefulWidget {
  const EcommerceMainPage({super.key});

  @override
  State<EcommerceMainPage> createState() => _EcommerceMainPageState();
}

class _EcommerceMainPageState extends State<EcommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.percent),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("Delivery address"),
                            Text(
                              "92 High Street, London",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.notifications_none,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Center(
                      child: SizedBox(
                        width: 160,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search the entire shop",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 52,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Row(
                      children: [
                        const Text("Delivery is "),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: const Text("50%"),
                        ),
                        const Text("Cheaper")
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        children: [
                          const Text(
                            "Categories",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          const Spacer(),
                          const Text("See all"),
                          const SizedBox(
                            width: 12,
                          ),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.grey[400]!,
                            foregroundColor: Colors.black,
                            child: const Icon(
                              Icons.arrow_right,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Column(
                              children: [
                                Expanded(
                                  child: CircleAvatar(
                                    radius: 38,
                                  ),
                                ),
                                Text("Phones"),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        const Text(
                          "Flash Sale",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(8),
                          child: const Text('02:59:23'),
                        ),
                        Spacer(),
                        const Text("See all"),
                        const SizedBox(
                          width: 12,
                        ),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[400]!,
                          foregroundColor: Colors.black,
                          child: const Icon(
                            Icons.arrow_right,
                          ),
                        ),
                        SizedBox(width: 16,),
                      ],
                    ),
                    
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
