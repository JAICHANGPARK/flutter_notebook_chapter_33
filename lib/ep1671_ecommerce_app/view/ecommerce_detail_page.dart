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
                  top: 16,
                  right: 16,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite),
                        foregroundColor: Colors.red,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.ios_share),
                      ),
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
