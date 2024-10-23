import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoapp/component/text_component.dart';
import 'package:photoapp/component/text_field_component.dart';
import 'package:photoapp/routes/route_name.dart';

import '../component/button_component.dart';
import '../component/icon_component.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 44),
            child: CustomImageButton(
              url: 'assets/images/back.png',
              onTap: () {
                Get.back();
              },
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const NormaTextComfortaa(text: "Log in"),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            labelText: "",
            hintText: "",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            onSubmitted: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            labelText: "",
            hintText: "",
            controller: passwordController,
            keyboardType: TextInputType.text,
            obscureText: true,
            onSubmitted: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButtonComponent(
            text: 'LOG IN',
            onPressed: () {
              Get.toNamed(RouterName.discover);
            },
            disableBackgroundColor: Colors.black,
            disableForegroundColor: Colors.white,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            height: 52,
            width: double.maxFinite,
          )
        ]),
      ),
    );
  }
}
