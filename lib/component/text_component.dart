import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormaTextComfortaa extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const NormaTextComfortaa({
    super.key,
    required this.text,
    this.fontSize = 36,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.comfortaa(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

class NormaText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final double heightBox;
  final double widthBox;

  const NormaText({
    super.key,
    required this.text,
    this.fontSize = 13,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.heightBox = 15,
    this.widthBox = 263,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: heightBox,
        width: widthBox,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ));
  }
}
