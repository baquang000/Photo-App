import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photoapp/component/button_component.dart';
import 'package:photoapp/component/text_component.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final List<String> _profileImage = const [
    "assets/images/profile_2.png",
    "assets/images/profile_2_1.png",
    "assets/images/profile_2_2.png",
    "assets/images/profile_2_3.png",
    "assets/images/profile_2_4.png",
    "assets/images/profile_2_5.png",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 76, right: 124, left: 123, bottom: 32),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile_avatar.png"),
                radius: 64,
              ),
            ),
            const NormaTextComfortaa(text: "Jane"),
            const SizedBox(
              height: 16,
            ),
            NormaText(
              text: "San francisco, ca".toUpperCase(),
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButtonComponent(
                text: "follow jane".toUpperCase(),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                width: double.maxFinite,
                onPressed: () {}),
            const SizedBox(
              height: 16,
            ),
            CustomButtonComponent(
                text: "message".toUpperCase(),
                width: double.maxFinite,
                onPressed: () {}),
            const SizedBox(
              height: 32,
            ),
            MasonryGridView.builder(
                shrinkWrap: true,
                itemCount: _profileImage.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 9, bottom: 10),
                      child: Image.asset(_profileImage[index]),
                    )),
            const SizedBox(
              height: 32,
            ),
            CustomButtonComponent(
                text: "see more".toUpperCase(),
                width: double.maxFinite,
                onPressed: () {}),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
