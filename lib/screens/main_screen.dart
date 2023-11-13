import 'package:flutter/material.dart';
import 'package:photo_app/screens/profile_screen.dart';
import 'package:photo_app/screens/search_screen.dart';

import 'chat_screen.dart';
import 'discover_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> listOfScreen = [
    const DiscoverScreen(),
    const SearchScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];
  int currentIndex = 0;

  _onChange(int index) {
    currentIndex = index;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfScreen[currentIndex],
      bottomNavigationBar: Container(
        height: 83,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey))),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 9, bottom: 34, right: 11, left: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                    onPressed: () {
                      _onChange(0);
                    },
                    icon: const Icon(
                      Icons.home,
                    )),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                    onPressed: () {
                      _onChange(1);
                    },
                    icon: const Icon(
                      Icons.search,
                    )),
              ),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black),
                    gradient: const LinearGradient(colors: [
                      Color(0xffFF4D00),
                      Color(0xffFF00D6),
                    ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                    onPressed: () {
                      _onChange(2);
                    },
                    icon: const Icon(
                      Icons.messenger_outline,
                    )),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                    onPressed: () {
                      _onChange(3);
                    },
                    icon: const Icon(
                      Icons.person,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
