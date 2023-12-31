import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1685_transport_app/views/transport_main_page.dart';

class TransportStartPage extends StatefulWidget {
  const TransportStartPage({super.key});

  @override
  State<TransportStartPage> createState() => _TransportStartPageState();
}

class _TransportStartPageState extends State<TransportStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TransportMainPage(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: const Text(
                        "Skip",
                        style: TextStyle(),
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              const Text(
                "How do you want\ntravel today?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  "Choose your preferred\nmode of transport below",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(
                height: 140,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 12,
                            right: 12,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    radius: 10,
                                    foregroundColor: Colors.white,
                                    child: Text("T"),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Train"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 12,
                            right: 12,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 10,
                                    foregroundColor: Colors.white,
                                    child: Text("L"),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Lightrail"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 12,
                            right: 12,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.lightBlue,
                                    radius: 10,
                                    foregroundColor: Colors.white,
                                    child: Text("B"),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Buses"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Get notified about major disruptions\nand service changes.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
