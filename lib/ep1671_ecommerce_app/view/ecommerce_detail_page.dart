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
                      Expanded(
                          child: PageView(
                        children: [],
                      )),
                      DotsIndicator(dotsCount: 4)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
              ),
              padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gaming Device, Gray",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(),
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        Text("\$168.00"),
                        Text("from \$14 per month"),
                        Spacer(),
                        Icon(Icons.info_outline),
                      ],
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    maxLines: 3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(195, 231, 3, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Center(
                    child: Text(
                      "Delivery on 26 October",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
