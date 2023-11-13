import 'package:flutter/material.dart';
import 'package:photo_app/utils/assets.dart';

import '../entity/user_chat_entity.dart';
import '../widgets/chat_card_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<UserChatEntity> listOfPeople = [
    UserChatEntity(
        photo: Assets.tAvatarMan2Icon,
        name: "James",
        lastMessage: "Thank you! That was very helpful!"),
    UserChatEntity(
        photo: Assets.tAvatarMan2Icon,
        name: "James",
        lastMessage: "Thank you! That was very helpful!"),
    UserChatEntity(
        photo: Assets.tAvatarMan2Icon,
        name: "James",
        lastMessage: "Thank you! That was very helpful!"),
    UserChatEntity(
        photo: Assets.tAvatarMan2Icon,
        name: "James",
        lastMessage: "Thank you! That was very helpful!"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 11,
                ),
                const Text(
                  "Chats",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 11,
                ),
                Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final entity = listOfPeople[index];
                    return ChatCardWidget(entity: entity);
                  },
                  itemCount: listOfPeople.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
