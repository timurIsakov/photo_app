import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey))),
      child: Padding(
        padding: const EdgeInsets.only(top: 9, bottom: 34, right: 11, left: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                    Icons.home,
                  )),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: IconButton(
                  onPressed: () {},
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.messenger_outline,
                  )),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
