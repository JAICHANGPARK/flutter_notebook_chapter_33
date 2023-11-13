import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ConsumerLoginPage extends StatefulWidget {
  const ConsumerLoginPage({super.key});

  @override
  State<ConsumerLoginPage> createState() => _ConsumerLoginPageState();
}

class _ConsumerLoginPageState extends State<ConsumerLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Discounts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                ),
              ),
              Gap(16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: const Text(
                  "Get notified every time there's a discount on your saved items",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(16),
              DotsIndicator(
                dotsCount: 3,
                decorator: DotsDecorator(
                  size: const Size(48, 6),
                  activeSize: const Size(48, 6),
                  shape: const RoundedRectangleBorder(),
                  activeShape: const RoundedRectangleBorder(),
                  activeColor: Colors.pink,
                  color: Colors.pink[50]!,
                ),
              ),
              Gap(24),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 42,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Text("or"),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
