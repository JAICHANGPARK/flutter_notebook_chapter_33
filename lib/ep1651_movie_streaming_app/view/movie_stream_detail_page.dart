import 'package:flutter/material.dart';

class MovieStreamDetailPage extends StatelessWidget {
  const MovieStreamDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
          )),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(32)
                      ),
                      padding: EdgeInsets.all(24),
                      margin: EdgeInsets.all(24),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.calendar_month),
                          Text("17 Sep 2022"),
                          Icon(Icons.timelapse),
                          Text("148 Minutes"),
                          Icon(Icons.movie),
                          Text("Action"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
