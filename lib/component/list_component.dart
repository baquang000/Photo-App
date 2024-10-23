import 'package:flutter/material.dart';
import 'package:photoapp/component/text_component.dart';

import '../model/background.dart';

class ListBackGround extends StatelessWidget {
  final Background backGround;
  final Function() onTap;

  const ListBackGround({
    super.key,
    required this.backGround,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.maxFinite,
      height: 387,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Image.asset(
              backGround.urlImage,
              width: double.maxFinite,
              height: 343,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TitleUserCustom(
            urlAvatar: backGround.urlAvatar,
            name: backGround.name,
            description: "@${backGround.email}",
          )
        ],
      ),
    );
  }
}

class TitleUserCustom extends StatelessWidget {
  final String urlAvatar;
  final String name;
  final String description;
  final double heightBox;
  final double heightAvatar;
  final double widthAvatar;
  final double radiusAvatar;
  final double widthSizeBox;
  final double fontSizeDescription;
  final double heightBoxDescription;
  final FontWeight titleFontWeight;
  final double sizeBoxInTwoTD;

  const TitleUserCustom(
      {super.key,
      required this.urlAvatar,
      required this.name,
      required this.description,
      this.heightBox = 28,
      this.heightAvatar = 28,
      this.widthAvatar = 28,
      this.radiusAvatar = 30,
      this.widthSizeBox = 5,
      this.fontSizeDescription = 11,
      this.heightBoxDescription = 13,
      this.titleFontWeight = FontWeight.normal,
      this.sizeBoxInTwoTD = 0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.maxFinite,
      height: heightBox,
      child: Row(
        children: [
          SizedBox(
            height: heightAvatar,
            width: widthAvatar,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                urlAvatar,
              ),
              radius: radiusAvatar,
            ),
          ),
          SizedBox(
            width: widthSizeBox,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NormaText(
                text: name,
                fontWeight: titleFontWeight,
              ),
              SizedBox(
                height: sizeBoxInTwoTD,
              ),
              NormaText(
                text: description,
                fontSize: fontSizeDescription,
                heightBox: heightBoxDescription,
              )
            ],
          ),
        ],
      ),
    );
  }
}
