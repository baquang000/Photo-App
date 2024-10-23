import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoapp/routes/route_name.dart';

import '../component/button_component.dart';
import '../component/text_component.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 707,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/Rectangle.png",
                  width: double.infinity,
                  height: 707,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 307,
                  right: 85,
                  left: 84,
                  bottom: 346,
                  child: SizedBox(
                    height: 54,
                    width: 206,
                    child: Row(
                      children: [
                        Image.asset("assets/images/Union.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        const NormaTextComfortaa(
                          text: 'Photo',
                          fontSize: 48,
                        )
                      ],
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              CustomButtonComponent(
                text: 'LOGIN',
                onPressed: () {
                  Get.toNamed(RouterName.login);
                },
              ),
              const SizedBox(
                width: 9,
              ),
              CustomButtonComponent(
                text: 'REGISTER',
                onPressed: () {
                  Get.toNamed(RouterName.register);
                },
                backgroundColor: Colors.black,
                disableBackgroundColor: Colors.black,
                foregroundColor: Colors.white,
                disableForegroundColor: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
