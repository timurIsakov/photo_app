import 'package:flutter/material.dart';
import 'package:photo_app/entity/user_info_entity.dart';

class UserInfoWidget extends StatelessWidget {
  final UserInfoEntity entity;
  const UserInfoWidget({
    Key? key,
    required this.entity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 28,
          width: 28,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: entity.avatar,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            constraints: const BoxConstraints(maxHeight: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entity.name,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  entity.userName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 11),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
