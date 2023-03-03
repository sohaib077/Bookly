import 'package:flutter/material.dart';

import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backGroundColor = Colors.white,
    this.textColor = Colors.black,
    required this.text,
    this.topLeft = 0,
    this.bottomLeft = 0,
    this.topRight = 0,
    this.bottomRight = 0,
  });

  final Color backGroundColor;
  final Color textColor;
  final String text;
  final double topLeft;
  final double bottomLeft;
  final double topRight;
  final double bottomRight;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: 48,
      color: backGroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft),
          bottomLeft: Radius.circular(bottomLeft),
          topRight: Radius.circular(topRight),
          bottomRight: Radius.circular(bottomRight),
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyleSemiBold18.copyWith(
          fontWeight: FontWeight.w900,
          color: textColor,
        ),
      ),
    );
  }
}
