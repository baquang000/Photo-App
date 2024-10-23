import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final double fontSize;
  final Color textColor;
  final double borderWidth;
  final double hintSize;
  final TextInputAction textInputAction;
  final Function(String) onSubmitted;

  final Color hintColor;

  const CustomTextField(
      {super.key,
      required this.labelText,
      required this.hintText,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      required this.controller,
      this.fontSize = 15,
      this.textColor = Colors.black,
      this.borderWidth = 2,
      this.hintSize = 15,
      this.hintColor = Colors.grey,
      this.textInputAction = TextInputAction.done,
      required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: hintSize, color: hintColor),
        labelStyle: const TextStyle(color: Colors.grey),
        isDense: false,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: borderWidth)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: borderWidth)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: borderWidth)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: borderWidth)),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      controller: controller,
      enabled: true,
      maxLines: 1,
      textAlign: TextAlign.start,
      style: TextStyle(color: textColor, fontSize: fontSize),
      textInputAction: textInputAction,
      onSubmitted: onSubmitted,
    );
  }
}
