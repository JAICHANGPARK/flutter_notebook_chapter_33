import 'package:flutter/material.dart';

class TransportStartPage extends StatefulWidget {
  const TransportStartPage({super.key});

  @override
  State<TransportStartPage> createState() => _TransportStartPageState();
}

class _TransportStartPageState extends State<TransportStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text("Skip",style: TextStyle(
                    
                  ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
