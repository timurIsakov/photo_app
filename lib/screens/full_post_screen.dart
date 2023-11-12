import 'package:flutter/material.dart';
import 'package:photo_app/utils/assets.dart';
import 'package:photo_app/widgets/user_info_widget.dart';

import '../entity/user_post_entity.dart';

class FullPostScreen extends StatelessWidget {
  final UserPostEntity userPostEntity;
  const FullPostScreen({Key? key, required this.userPostEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              userPostEntity.post,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                Assets.tGradientBlack,
                fit: BoxFit.fill,
              )),
          Positioned(
            top: 58,
            left: 16,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UserInfoWidget(entity: userPostEntity.userInfoEntity),
                  const SizedBox(width: 174),
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
