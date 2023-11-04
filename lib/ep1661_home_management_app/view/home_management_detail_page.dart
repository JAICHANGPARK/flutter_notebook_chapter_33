import 'package:flutter/material.dart';

class HomeManagementDetailPage extends StatefulWidget {
  const HomeManagementDetailPage({super.key});

  @override
  State<HomeManagementDetailPage> createState() =>
      _HomeManagementDetailPageState();
}

class _HomeManagementDetailPageState extends State<HomeManagementDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 360,
            decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2023/09/10/15/33/traditional-8245250_1280.jpg"),
                  fit: BoxFit.cover,
                )),
            padding: const EdgeInsets.only(top: 64, left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Icon(Icons.keyboard_arrow_left),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Icon(Icons.favorite_border),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 46,
                  // color: Colors.blue,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 72,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Single room in sunny apartment.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: Colors.grey[400],
                    ),
                    Text(
                      "Seoul, Republic of korea",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Posted 2 days ago",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 42,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.blueAccent,
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Call owner",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.blue,
                          ),
                          child: const Center(
                            child: Text(
                              "Book room",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ABOUT ME",
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "ROOM OVERVIEW",
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rent"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$500/month",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("HOME AMENITIES"),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("SUITABLE FOR"),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("INTERESTED IN"),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "Wi-fi",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("VIEW LOCATION"),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 108,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("POSTED BY"),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(),
                      ),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sample Human"),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Earth")
                            ],
                          )),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(color: Colors.blueAccent),
                            child: const Text("View profile"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
