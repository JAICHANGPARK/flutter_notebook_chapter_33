import 'package:flutter/material.dart';

class HomeManagementProfilePage extends StatefulWidget {
  const HomeManagementProfilePage({super.key});

  @override
  State<HomeManagementProfilePage> createState() => _HomeManagementProfilePageState();
}

class _HomeManagementProfilePageState extends State<HomeManagementProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Colors.grey[300]!,
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.keyboard_arrow_left),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Dream Walker",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                    ),
                                    Text("Seoul, Republic of Korea"),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Icon(
                                      Icons.phone_outlined,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Icon(
                                      Icons.chat_outlined,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 32,
                    ),
                    const Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      maxLines: 3,
                    ),
                    const Divider(
                      height: 32,
                    ),
                    const Text(
                      "BADGES",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[200]!,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                    ),
                                    color: Colors.blue[50]),
                                padding: const EdgeInsets.all(9),
                                child: const Icon(Icons.lock_open),
                              ),
                              const Text("Bronze"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.blue[50]),
                                padding: const EdgeInsets.all(9),
                                child: const Icon(Icons.lock_open),
                              ),
                              const Text("Bronze"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.blue[50]),
                                padding: const EdgeInsets.all(9),
                                child: const Icon(Icons.lock_open),
                              ),
                              const Text("Bronze"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.blue[50]),
                                padding: const EdgeInsets.all(9),
                                child: const Icon(Icons.lock_open),
                              ),
                              const Text("Bronze"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.blue[50]),
                                padding: const EdgeInsets.all(9),
                                child: const Icon(Icons.lock_open),
                              ),
                              const Text("Bronze"),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Text(
                      "PERFORMANCE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(9),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("RESPONSE RATE"),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "90%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: [
                                Text("RESPONSE RATE"),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "90%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: [
                                Text("RESPONSE RATE"),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "90%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "More listing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See All",
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 240,
                margin: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      width: 320,
                      margin: const EdgeInsets.only(right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const HomeManagementProfilePage(),
                                    ),
                                  );
                                },
                                child: const CircleAvatar(
                                  radius: 12,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text("Dream Walker"),
                              const Spacer(),
                              const Icon(Icons.favorite_border),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Sigle private room in sunny apt.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 14,
                                color: Colors.grey[600],
                              ),
                              Text(
                                "Seoul, Republic of Korea",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "\$150/",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const Text(
                                "mo",
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
