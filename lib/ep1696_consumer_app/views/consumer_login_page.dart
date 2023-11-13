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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
          child: Column(
            children: [
              Container(
                height: 360,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400]!,
                  ),
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
              const Gap(16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Get notified every time there's a discount on your saved items",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Gap(16),
              DotsIndicator(
                dotsCount: 3,
                decorator: DotsDecorator(
                  size: const Size(48, 4),
                  activeSize: const Size(48, 4),
                  shape: const RoundedRectangleBorder(),
                  activeShape: const RoundedRectangleBorder(),
                  activeColor: Colors.pink,
                  color: Colors.pink[50]!,
                ),
              ),
              const Gap(24),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: const Center(
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 52,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    const Positioned.fill(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Text("or"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: const Center(
                  child: Text(
                    "Continue with Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Gap(32),
              const Text.rich(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
                TextSpan(
                  children: [
                    TextSpan(text: 'By continuing you agree to the'),
                    TextSpan(
                      text: "Terms and Conditions",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: "and",
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
