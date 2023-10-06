import 'package:flutter/material.dart';

class EcommerceNotificationPage extends StatefulWidget {
  const EcommerceNotificationPage({super.key});

  @override
  State<EcommerceNotificationPage> createState() => _EcommerceNotificationPageState();
}

class _EcommerceNotificationPageState extends State<EcommerceNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Notifications"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
            child: Badge(
              child: Icon(Icons.notifications_none),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
            child: Badge(
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Order status"),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Container(
                        height: 94,
                        width: 94,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                            ),
                            child: Text("T-Shirt"),
                          ),
                          Text("Package received"),
                          Text("Package 123456789 from message 12345789 has been received,"),
                          Text("01 - 08 - 2023 ")
                        ],
                      )),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
