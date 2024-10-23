import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoapp/routes/route_name.dart';

import '../component/list_component.dart';
import '../model/Chat.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({super.key});

  @override
  State<ChatsView> createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  final List<Chat> chatList = const [
    Chat(
        urlAvatar: 'assets/images/chat_1.png',
        name: 'James',
        description: 'Thank you! That was very helpful!'),
    Chat(
        urlAvatar: "assets/images/chat_2.png",
        name: "Will Kenny",
        description: "I know... I’m trying to get the funds."),
    Chat(
        urlAvatar: "assets/images/chat_3.png",
        name: "Beth Williams",
        description:
            "I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm..."),
    Chat(
        urlAvatar: "assets/images/chat_4.png",
        name: "Rev Shawn",
        description:
            "Wanted to ask if you’re available for a portrait shoot next week.")
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 32,
          ),
          const Text(
            "Chats",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: Colors.grey, // Màu của đường kẻ
            thickness: 0.5,
            height: 0,
          ),
          ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: chatList.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    height: 0,
                  ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(RouterName.individualChat);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 20),
                    child: TitleUserCustom(
                      urlAvatar: chatList[index].urlAvatar,
                      name: chatList[index].name,
                      description: chatList[index].description,
                      heightBox: 64,
                      radiusAvatar: 32,
                      heightAvatar: 64,
                      widthAvatar: 64,
                      heightBoxDescription: 36,
                      fontSizeDescription: 13,
                      titleFontWeight: FontWeight.bold,
                      sizeBoxInTwoTD: 6,
                    ),
                  ),
                );
              }),
          const Divider(
            color: Colors.grey, // Màu của đường kẻ
            thickness: 0.5,
            height: 0,
          ),
        ],
      ),
    );
  }
}
