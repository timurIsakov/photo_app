import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../utils/assets.dart';
import '../widgets/button_widget.dart';
import '../widgets/input_form_widget.dart';
import 'discover_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        height: 12,
                        width: 12,
                        child: Center(
                            child: SvgPicture.asset(
                          Assets.tArrowBackIcon,
                          fit: BoxFit.cover,
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 33),
                const Text(
                  "Log in",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 32),
                const InputFormWidget(),
                const SizedBox(height: 16),
                const InputFormWidget(),
                const SizedBox(height: 16),
                ButtonWidget(
                    text: 'log in',
                    color: Colors.black,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DiscoverScreen(),
                          ));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
