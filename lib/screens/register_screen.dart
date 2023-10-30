import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:photo_app/screens/log_in_screen.dart';
import 'package:photo_app/utils/assets.dart';
import 'package:photo_app/widgets/button_widget.dart';

import '../widgets/input_form_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  "Register",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 32),
                const InputFormWidget(),
                const SizedBox(height: 16),
                const InputFormWidget(),
                const SizedBox(height: 16),
                ButtonWidget(
                    text: 'next',
                    color: Colors.black,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogInScreen(),
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
