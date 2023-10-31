import 'package:flutter/material.dart';

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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: const Text(
                      "Skip",
                      style: TextStyle(),
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
                padding: EdgeInsets.symmetric(vertical: 24),
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
                                    radius: 8,
                                    child: Text("T"),
                                    foregroundColor: Colors.white,
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
                                    radius: 8,
                                    child: Text("L"),
                                    foregroundColor: Colors.white,
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
                                    radius: 8,
                                    child: Text("B"),
                                    foregroundColor: Colors.white,
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
              SizedBox(
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
