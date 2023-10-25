import 'package:flutter/material.dart';

class GroceryDetailPage extends StatefulWidget {
  const GroceryDetailPage({super.key});

  @override
  State<GroceryDetailPage> createState() => _GroceryDetailPageState();
}

class _GroceryDetailPageState extends State<GroceryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                border: Border.all(
                  color: Colors.white,
                ),
                color: Colors.green[50],
              ),
              child: Text(
                "Back",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 24
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
