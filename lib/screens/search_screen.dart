import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:photo_app/widgets/button_widget.dart';

import '../widgets/bottom_navigation_widget.dart';
import '../widgets/input_form_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                const Text(
                  "Search",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 32),
                const InputFormWidget(labelText: "Search all photos"),
                const SizedBox(height: 32),
                const Text(
                  "ALL RESULTS",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 24),
                //IMAGE GRID
                const SizedBox(height: 32),
                ButtonWidget(text: "See more", onTap: () {}),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
