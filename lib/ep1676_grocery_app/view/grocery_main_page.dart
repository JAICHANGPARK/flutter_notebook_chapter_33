import 'package:flutter/material.dart';

class GroceryMainPage extends StatefulWidget {
  const GroceryMainPage({super.key});

  @override
  State<GroceryMainPage> createState() => _GroceryMainPageState();
}

class _GroceryMainPageState extends State<GroceryMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 246, 246, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 24,
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
              children: [Card()],
            )),
            Positioned(
              left: 24,
              right: 24,
              bottom: 24,
              child: Container(
                height: 72,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    menuIndex == 0
                        ? Container(
                            decoration: BoxDecoration(color: Colors.green[50], borderRadius: BorderRadius.circular(32)),
                            padding: EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            child: Center(
                              child: Text(
                                "HOME",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                menuIndex = 0;
                              });
                            },
                            icon: const Icon(Icons.home_filled),
                          ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          menuIndex = 1;
                        });
                      },
                      icon: const Icon(Icons.apps),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          menuIndex = 2;
                        });
                      },
                      icon: const Icon(Icons.folder),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          menuIndex = 3;
                        });
                      },
                      icon: const Icon(Icons.person_outline),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
