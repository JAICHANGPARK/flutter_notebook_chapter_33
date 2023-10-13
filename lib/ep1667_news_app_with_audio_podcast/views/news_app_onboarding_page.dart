import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class NewsAppOnboardingPage extends StatefulWidget {
  const NewsAppOnboardingPage({super.key});

  @override
  State<NewsAppOnboardingPage> createState() => _NewsAppOnboardingPageState();
}

class _NewsAppOnboardingPageState extends State<NewsAppOnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2014/12/27/16/38/planet-581239_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            top: 100,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    "THE NEWS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                DotsIndicator(
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      size: Size(16, 16),
                      activeSize: Size(16, 16),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
