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
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home_filled,
                    ),
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.flash_on,
                    ),
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  )
                ],
              ),
              CircleAvatar(
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.layers,
                    ),
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
