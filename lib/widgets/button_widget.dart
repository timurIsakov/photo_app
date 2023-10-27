import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String text;
  final Function() onTap;
  const ButtonWidget(
      {Key? key,
      this.height,
      this.width,
      this.color,
      required this.text,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      splashColor: color != null ? Colors.white : Colors.grey,
      onTap: () {
        onTap.call();
      },
      child: Ink(
        height: height ?? 52,
        width: width ?? 343,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color ?? Colors.white,
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                color: color == null ? Colors.black : Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 13),
          ),
        ),
      ),
    );
  }
}
