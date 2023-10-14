import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class NewAppMainPage extends StatefulWidget {
  const NewAppMainPage({super.key});

  @override
  State<NewAppMainPage> createState() => _NewAppMainPageState();
}

class _NewAppMainPageState extends State<NewAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(),
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 12,
                        ),
                        child: const Text(
                          "THE NEWS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  const Badge(
                    child: Icon(
                      Icons.notifications,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.all(8),
              height: 200,
              color: Colors.blue,
            ),
            DotsIndicator(
              dotsCount: 4,
              decorator: DotsDecorator(
                size: Size(16,16),
                activeSize: Size(16,16),
                activeColor: Colors.black,
                color: Colors.grey[400]
              ),
            )
          ],
        ),
      ),
    );
  }
}
