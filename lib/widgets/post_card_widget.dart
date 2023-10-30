import 'package:flutter/material.dart';
import 'package:photo_app/entity/user_post_entity.dart';
import 'package:photo_app/widgets/user_info_widget.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({Key? key, required this.userPostEntity})
      : super(key: key);

  final UserPostEntity userPostEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      width: 345,
      child: Column(
        children: [
          SizedBox(
            height: 343,
            width: 343,
            child: Image.asset(userPostEntity.post, fit: BoxFit.cover),
          ),
          const SizedBox(height: 16),
          UserInfoWidget(entity: userPostEntity.userInfoEntity)
        ],
      ),
    );
  }
}
