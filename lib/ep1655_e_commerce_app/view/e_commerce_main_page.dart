import 'package:flutter/material.dart';

class EcommerceMainPage extends StatefulWidget {
  const EcommerceMainPage({super.key});

  @override
  State<EcommerceMainPage> createState() => _EcommerceMainPageState();
}

class _EcommerceMainPageState extends State<EcommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                          child: const TextField(

                          ),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: const Badge(
                          child: Icon(Icons.notifications_none),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: const Badge(
                          child: Icon(Icons.shopping_bag_outlined),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
