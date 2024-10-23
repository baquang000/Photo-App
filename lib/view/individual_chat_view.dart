import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoapp/routes/route_name.dart';

import '../model/Individual_chat.dart';

class IndividualChatView extends StatefulWidget {
  const IndividualChatView({super.key});

  @override
  State<IndividualChatView> createState() => _IndividualChatViewState();
}

class _IndividualChatViewState extends State<IndividualChatView> {
  List<IndividualChat> listChat = [
    IndividualChat(
        url: 'assets/images/chat_avatar.png',
        message:
            'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!',
        fromMe: false),
    IndividualChat(
        url: "assets/images/chat_avatar_1.png",
        message:
            "A fast 50mm like f1.8 would help with the bokeh. I’ve been using primes as they tend to get a bit sharper images.",
        fromMe: true),
    IndividualChat(
        url: "assets/images/chat_avatar.png",
        message: "Thank you! That was very helpful!",
        fromMe: false)
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 120,
                ),
                const Center(
                  child: Text(
                    "James",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey, // Màu của đường kẻ
            thickness:
                0.5, // Độ dày của đường kẻ// Chiều cao của đường kẻ (bao gồm cả padding)
          ),
          const SizedBox(
            height: 32,
          ),
          ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: listChat.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 24),
                  child: Row(
                    mainAxisAlignment: listChat[index].fromMe
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      if (!listChat[index].fromMe) ...{
                        CircleAvatar(
                          backgroundImage: AssetImage(listChat[index].url),
                          radius: 14,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                      },
                      Flexible(
                          child: Container(
                        color: Colors.grey.shade50,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            listChat[index].message,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      )),
                      if (listChat[index].fromMe) ...{
                        const SizedBox(
                          width: 16,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(listChat[index].url),
                          radius: 14,
                        ),
                      },
                    ],
                  ),
                );
              })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, // Đặt chỉ số của tab hiện tại (Chat)
        onTap: (int newIndex) {
          // Điều hướng ngược lại các màn hình đã có
          switch (newIndex) {
            case 0:
              Get.toNamed(RouterName.discover);
            case 1:
              Get.toNamed(RouterName.search);
            case 2:
              Get.toNamed(RouterName.discover);
            case 3:
              Get.toNamed(RouterName.chat);
            case 4:
              Get.toNamed(RouterName.profile);
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/home.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/search.png"), label: "Search"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/new.png"), label: "New"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/Comment.png"), label: "Chat"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/bell.png"), label: "Person")
        ],
        showSelectedLabels: false,
      ),
    );
  }
}
