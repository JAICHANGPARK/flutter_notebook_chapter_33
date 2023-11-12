import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ConsumerHomeApp extends StatefulWidget {
  const ConsumerHomeApp({super.key});

  @override
  State<ConsumerHomeApp> createState() => _ConsumerHomeAppState();
}

class _ConsumerHomeAppState extends State<ConsumerHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 26,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dream Walker"),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "@Dreamwalker",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                      ),
                      color: Colors.pink,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 38,
                    margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: const TextField(),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.tune,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Folders",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.open_in_full,
                    size: 14,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("More"),
                ],
              ),
            ),
            const _FoldersListWidget(),
            const Divider(
              height: 54,
              indent: 16,
              endIndent: 16,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Gap(16),
            _ItemsListWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_filled),
                  iconSize: 32,
                ),
                Gap(4),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.transparent,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                  iconSize: 32,
                ),
                Gap(4),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.transparent,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  iconSize: 32,
                ),
                Gap(4),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _FoldersListWidget extends StatelessWidget {
  const _FoldersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SizedBox(
              width: 180,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 140,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          topLeft: Radius.circular(4),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 8,
                            top: 8,
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey, width: 1.5),
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Backpacks"),
                                Text("22 items"),
                              ],
                            ),
                            Icon(
                              Icons.lock_open,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ItemsListWidget extends StatelessWidget {
  const _ItemsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SizedBox(
              width: 180,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          topLeft: Radius.circular(4),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/11/23/15/25/cabinet-1853504_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 8,
                            top: 8,
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey, width: 1.5),
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hand made sweater 4/5, limited edition, limited edition, limited edition, limited edition, ",
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text("\$9.99"),
                                Icon(Icons.stacked_line_chart),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
