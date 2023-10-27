import 'package:flutter/material.dart';

class DiscoverMobileMainPage extends StatefulWidget {
  const DiscoverMobileMainPage({super.key});

  @override
  State<DiscoverMobileMainPage> createState() => _DiscoverMobileMainPageState();
}

class _DiscoverMobileMainPageState extends State<DiscoverMobileMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 92,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_filled,
                    ),
                    iconSize: 28,
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 28,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.flash_on,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  )
                ],
              ),
              const CircleAvatar(
                radius: 26,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.circle,
                ),
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 28,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.layers,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              const CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
