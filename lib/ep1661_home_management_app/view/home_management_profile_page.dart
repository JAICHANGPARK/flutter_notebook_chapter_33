import 'package:flutter/material.dart';

class HomeManagementProfilePage extends StatefulWidget {
  const HomeManagementProfilePage({super.key});

  @override
  State<HomeManagementProfilePage> createState() => _HomeManagementProfilePageState();
}

class _HomeManagementProfilePageState extends State<HomeManagementProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
              ),
              child: Center(
                child: Icon(Icons.keyboard_arrow_left),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Expanded(child: Column(children: [
                  Text("Dream Walker"),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                      ),
                      Text("Seoul, Republic of Korea"),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(
                          Icons.phone_outlined,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(
                          Icons.phone_outlined,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  )
                ],))

              ],
            )
          ],
        ),
      ),
    );
  }
}
