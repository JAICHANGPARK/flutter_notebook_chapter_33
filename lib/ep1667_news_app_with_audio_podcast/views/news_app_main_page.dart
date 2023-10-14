import 'package:flutter/material.dart';

class NewAppMainPage extends StatefulWidget {
  const NewAppMainPage({super.key});

  @override
  State<NewAppMainPage> createState() => _NewAppMainPageState();
}

class _NewAppMainPageState extends State<NewAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 12,
                  ),
                  child: Text(
                    "THE NEWS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                Badge(
                  child: Icon(
                    Icons.notifications,
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
