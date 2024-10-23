import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final Function() onTap;

  const CustomImageButton(
      {super.key,
      required this.url,
      this.width = 12,
      this.height = 12,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: onTap,
        child: Image.asset(
          url,
          width: width,
          height: height,
        ));
  }
}
