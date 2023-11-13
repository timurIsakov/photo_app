import 'package:flutter/material.dart';

import '../entity/user_chat_entity.dart';

class ChatCardWidget extends StatelessWidget {
  final UserChatEntity entity;
  const ChatCardWidget({Key? key, required this.entity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black.withOpacity(0.3)))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 20),
        child: Row(
          children: [
            Container(
              height: 64,
              width: 64,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                entity.photo,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entity.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),

                ),
                const SizedBox(height: 6,),
                Text(
                  entity.lastMessage,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
