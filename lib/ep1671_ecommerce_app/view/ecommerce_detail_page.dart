import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ECommerceDetailPage extends StatefulWidget {
  const ECommerceDetailPage({super.key});

  @override
  State<ECommerceDetailPage> createState() => _EcommerceDetailPageState();
}

class _EcommerceDetailPageState extends State<ECommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 64,
                  right: 16,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.keyboard_arrow_left),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite),
                        foregroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.ios_share),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Column(
                    children: [
                      Expanded(child: PageView(children: [],)),
                      DotsIndicator(dotsCount: 4)
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
