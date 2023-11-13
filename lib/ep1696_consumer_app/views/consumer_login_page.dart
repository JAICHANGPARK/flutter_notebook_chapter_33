import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ConsumerLoginPage extends StatefulWidget {
  const ConsumerLoginPage({super.key});

  @override
  State<ConsumerLoginPage> createState() => _ConsumerLoginPageState();
}

class _ConsumerLoginPageState extends State<ConsumerLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                height: 360,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Discounts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
              ),
              Text(
                "Get notified every time there's a discount on your saved items",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              DotsIndicator(
                dotsCount: 3,
                decorator: DotsDecorator(
                  size: Size(48, 6),
                  activeSize: Size(48, 6),
                  shape: RoundedRectangleBorder(),
                  activeShape: RoundedRectangleBorder(),
                  activeColor: Colors.pink,
                  color: Colors.pink[50]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
