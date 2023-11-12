import 'package:flutter/material.dart';
import 'package:photo_app/entity/user_info_entity.dart';
import 'package:photo_app/entity/user_post_entity.dart';
import 'package:photo_app/screens/full_post_screen.dart';
import 'package:photo_app/utils/assets.dart';
import 'package:photo_app/widgets/bottom_navigation_widget.dart';
import 'package:photo_app/widgets/button_widget.dart';
import 'package:photo_app/widgets/post_card_widget.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  List<UserPostEntity> listPostEntity = [
    UserPostEntity(
        Assets.tPost1hImage,
        UserInfoEntity(
            avatar: Image.asset(Assets.tAvatarManIcon),
            name: "Ridhwan Nordin",
            userName: "@ridzjcob")),
    UserPostEntity(
        Assets.tPost2hImage,
        UserInfoEntity(
            avatar: Image.asset(Assets.tAvatarMan2Icon),
            name: "Clem Onojeghuo",
            userName: "@clemono2")),
    UserPostEntity(
        Assets.tPost1hImage,
        UserInfoEntity(
            avatar: Image.asset(Assets.tAvatarManIcon),
            name: "Ridhwan Nordin",
            userName: "@ridzjcob")),
    UserPostEntity(
        Assets.tPost1hImage,
        UserInfoEntity(
            avatar: Image.asset(Assets.tAvatarManIcon),
            name: "Ridhwan Nordin",
            userName: "@ridzjcob")),
    UserPostEntity(
        Assets.tPost1hImage,
        UserInfoEntity(
            avatar: Image.asset(Assets.tAvatarManIcon),
            name: "Ridhwan Nordin",
            userName: "@ridzjcob")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Discover",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 32),
              const Text(
                "What’s new today",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13),
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        listPostEntity.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: PostCardWidget(
                                userPostEntity: listPostEntity[index],
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FullPostScreen(
                                            userPostEntity:
                                                listPostEntity[index]),
                                      ));
                                },
                              ),
                            )),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              const Text(
                "Browse all",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 24),
              ButtonWidget(text: "see more", onTap: () {})
            ],
          ),
        ),
      )),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
