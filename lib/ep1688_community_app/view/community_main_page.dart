import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommunityMainPage extends StatefulWidget {
  const CommunityMainPage({super.key});

  @override
  State<CommunityMainPage> createState() => _CommunityMainPageState();
}

class _CommunityMainPageState extends State<CommunityMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "FEED",
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
            ),
          ),
          const Center(
            child: Badge(
              label: Text("2"),
              child: Icon(Icons.notifications_none),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: IndexedStack(
              index: menuIndex,
              children: [
                Container(),
                Container(),
                Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Row(
                                        children: [
                                          Text(
                                            "Dreamwalker",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Gap(2),
                                          Icon(
                                            Icons.verified,
                                            color: Colors.blue,
                                          ),
                                          Gap(2),
                                          Text(
                                            "highlights message in chat",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.more_horiz,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                      const Gap(4),
                                      const Row(
                                        children: [
                                          Text(
                                            "Flutter",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Gap(4),
                                          Text(
                                            "3h ago",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                      const Gap(16),
                                      Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(44, 47, 52, 1),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: const Text(
                                          "사람들의 내 내 봅니다. 까닭이요, 벌레는 나는 듯합니다. 아무 우는 사람들의 잠, 다 별이 이름을 까닭입니다. 소녀들의 새겨지는 않은 하늘에는 버리었습니다. 이름과, 하나의 벌써 토끼, 새겨지는 별이 그리고 것은 없이 있습니다",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const Gap(16),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlue,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                        child: const Text(
                                          "OPEN CHAT",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "new post in",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "Memes",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "by",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "Dreamwalker",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "3h ago",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_horiz,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                      const Gap(8),
                                      const Text(
                                        "Lorem ipsum dolor sit amet",
                                        style:
                                            TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                      ),
                                      const Gap(16),
                                      Container(
                                        height: 280,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                      const Gap(12),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.redAccent,
                                          ),
                                          Gap(4),
                                          Text(
                                            "187",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Gap(16),
                                          Icon(
                                            Icons.chat_bubble_outline,
                                            color: Colors.grey,
                                          ),
                                          Gap(4),
                                          Text(
                                            "94",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Gap(16),
                                          Icon(
                                            Icons.local_fire_department_outlined,
                                            color: Colors.grey,
                                          ),
                                          Gap(4),
                                          Text(
                                            "74",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Gap(16),
                                          CircleAvatar(
                                            radius: 12,
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.upload,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(),
                Container(),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 0;
                });
              },
              icon: const Icon(
                Icons.home_filled,
              ),
              color: menuIndex != 0 ? Colors.grey : Colors.orange,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 1;
                });
              },
              icon: const Icon(
                Icons.explore_outlined,
              ),
              color: menuIndex != 1 ? Colors.grey : Colors.orange,
            ),
            Badge(
              label: const Text("8"),
              child: IconButton(
                icon: const Icon(
                  Icons.newspaper,
                ),
                onPressed: () {
                  setState(() {
                    menuIndex = 2;
                  });
                },
                color: menuIndex != 2 ? Colors.grey : Colors.orange,
              ),
            ),
            Badge(
              label: const Text("1"),
              child: IconButton(
                icon: const Icon(
                  Icons.chat,
                ),
                onPressed: () {
                  setState(() {
                    menuIndex = 3;
                  });
                },
                color: menuIndex != 3 ? Colors.grey : Colors.orange,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 4;
                });
              },
              icon: const Icon(
                Icons.person,
              ),
              color: menuIndex != 4 ? Colors.grey : Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
