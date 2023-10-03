import 'package:flutter/material.dart';

class EcommerceDetailPage extends StatefulWidget {
  const EcommerceDetailPage({super.key});

  @override
  State<EcommerceDetailPage> createState() => _EcommerceDetailPageState();
}

class _EcommerceDetailPageState extends State<EcommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
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
                color: Colors.deepOrange,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 72,
                color: Colors.orange,
                child: Row(
                  children: [
                    Expanded(child: Container(
                      color: Colors.grey,
                    )),
                    SizedBox(width: 8,),
                    Expanded(child: Container(
                      color: Colors.grey,
                    )),
                    SizedBox(width: 8,),
                    Expanded(child: Container(
                      color: Colors.grey,
                    )),
                    SizedBox(width: 8,),
                    Expanded(child: Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
