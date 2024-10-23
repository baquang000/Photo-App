import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoapp/routes/route_name.dart';
import 'package:photoapp/routes/router_papes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Photo App",
      defaultTransition: Transition.fade,
      initialRoute: RouterName.intro,
      getPages: pages,
    );
  }
}
