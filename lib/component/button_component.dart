import 'package:flutter/material.dart';

class CustomButtonComponent extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color backgroundColor;
  final Color disableBackgroundColor;
  final Color disableForegroundColor;
  final Color foregroundColor;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double fontSize;
  final double height;
  final double width;
  final FontWeight fontWeight;

  const CustomButtonComponent(
      {super.key,
      required this.text,
      required this.onPressed,
      this.backgroundColor = Colors.white,
      this.foregroundColor = Colors.black,
      this.borderRadius = 6,
      this.borderColor = Colors.black,
      this.borderWidth = 2,
      this.fontSize = 13,
      this.height = 52,
      this.width = 167,
      this.disableBackgroundColor = Colors.white,
      this.disableForegroundColor = Colors.black,
      this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            fixedSize: Size(width, height),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            disabledBackgroundColor: disableBackgroundColor,
            disabledForegroundColor: disableForegroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(color: borderColor, width: borderWidth))),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ));
  }
}
