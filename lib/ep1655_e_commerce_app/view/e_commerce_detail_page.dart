import 'package:flutter/material.dart';

class EcommerceDetailPage extends StatefulWidget {
  const EcommerceDetailPage({super.key});

  @override
  State<EcommerceDetailPage> createState() => _EcommerceDetailPageState();
}

class _EcommerceDetailPageState extends State<EcommerceDetailPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text("Detail"),
                  Spacer(),
                  CircleAvatar(
                    child: Icon(Icons.share),
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.message_outlined),
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 64,
                color: Colors.orange,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            color: selectedIndex == 0 ? Colors.deepOrange : Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      color: Colors.grey,
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      color: Colors.grey,
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      color: Colors.grey,
                    )),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("Hoodie"),
                        ),
                        Text("Erigo Hoodie Kagosima Dark\nOak Unisex"),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                    child: Icon(Icons.favorite_border),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                        ),
                        Text("4.2"),
                        Text("(100 Reviews)"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text("112"),
                        Text("(Purchased)"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text("122"),
                        Text("(Stocks)"),
                      ],
                    ),
                  )
                ],
              ),
              Text("Size"),
              Container(
                height: 42,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
              Text('Description Product'),
              Expanded(child: Text("")),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("Price"),
                        Text("\$17.00"),
                      ],
                    ),
                  ),
                  Expanded(child: Container())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
