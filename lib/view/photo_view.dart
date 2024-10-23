import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/icon_component.dart';
import '../component/list_component.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key});

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  final String urlImage = Get.arguments['urlImage'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height, // Chiều cao toàn màn hình
        width: MediaQuery.of(context).size.width, // Chiều rộng toàn màn hình
        child: Stack(
          children: [
            Image.asset(
              urlImage, // Đường dẫn tới hình ảnh của bạn
              fit: BoxFit.cover, // Ảnh sẽ phủ toàn màn hình
              width: double.infinity, // Chiều rộng toàn bộ màn hình
              height: double.infinity, // Chiều cao toàn bộ màn hình
            ),
            Positioned(
                top: 46,
                left: 16,
                child: TitleUserCustom(
                  urlAvatar: urlImage,
                  name: "Ridhwan Nordin",
                  description: "ridzjcob",
                )),
            Positioned(
                top: 44,
                right: 14,
                child: CustomImageButton(
                  url: 'assets/images/x.png',
                  width: 32,
                  height: 32,
                  onTap: () {
                    Get.back();
                  },
                ))
          ],
        ),
      ),
    );
  }
}
