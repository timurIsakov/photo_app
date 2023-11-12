import 'package:flutter/material.dart';
import 'package:photo_app/widgets/bottom_navigation_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> listOfScreen = [];
  int currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfScreen[currentScreen],
      bottomNavigationBar: const BottomNavigationWidget(),


    );
  }
}
