import 'package:flutter/material.dart';
import 'package:photo_app/utils/assets.dart';
import 'package:photo_app/widgets/button_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 38),
              Container(
                height: 128,
                width: 128,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(
                  Assets.tProfileAvatar,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "Jane",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 16),
              Text(
                "San francisco, ca".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 32),
              ButtonWidget(
                text: "follow jane",
                onTap: () {},
                color: Colors.black,
              ),
              const SizedBox(height: 16),
              ButtonWidget(text: "message", onTap: () {}),
              const SizedBox(height: 32),
              //photo
              const SizedBox(height: 32),
              ButtonWidget(text: "See more", onTap: () {}),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
