import 'package:flutter/material.dart';

class ConsumerHomeApp extends StatefulWidget {
  const ConsumerHomeApp({super.key});

  @override
  State<ConsumerHomeApp> createState() => _ConsumerHomeAppState();
}

class _ConsumerHomeAppState extends State<ConsumerHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 26,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dream Walker"),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "@Dreamwalker",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                      ),
                      color: Colors.pink,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 38,
                    margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: const TextField(),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.tune,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Folders",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.open_in_full,
                    size: 14,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("More"),
                ],
              ),
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            const Divider(
              height: 42,
              indent: 16,
              endIndent: 16,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
