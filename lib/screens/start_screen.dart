import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_app/utils/assets.dart';
import 'package:photo_app/widgets/button_widget.dart';
import 'package:photo_app/widgets/user_info_widget.dart';

import '../entity/user_info_entity.dart';
import 'register_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<UserInfoEntity> listEntity = [
    UserInfoEntity(
        avatar: Image.asset(Assets.tAvatarManIcon, fit: BoxFit.cover),
        name: "Pawel Czerwinski",
        userName: "@pawel_czerwinski")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 707,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.tBackForStartScreen),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 307),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 38,
                      width: 38,
                      child: Center(child: SvgPicture.asset(Assets.tLogoIcon)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "photo",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 48),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 290),
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 20),
                  child: Row(
                    children: [UserInfoWidget(entity: listEntity[0])],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                  height: 52, width: 167, text: "log in", onTap: () {}),
              const SizedBox(width: 9),
              ButtonWidget(
                  height: 52,
                  width: 167,
                  text: "register",
                  color: Colors.black,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
