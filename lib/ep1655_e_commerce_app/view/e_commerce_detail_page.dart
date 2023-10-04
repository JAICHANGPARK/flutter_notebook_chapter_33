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
                // color: Colors.orange,
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
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Hoodie",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Erigo Hoodie Kagosima Dark\nOak Unisex",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.orange,
                        ),
                        Text(
                          "4.2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("(100 Reviews)"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("112"),
                        Text("(Purchased)"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("122"),
                        Text("(Stocks)"),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Size",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 42,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(child: Text("S")),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(child: Text("S")),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Description Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "\$17.00",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
