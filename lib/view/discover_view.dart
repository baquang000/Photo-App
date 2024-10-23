import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:photoapp/component/text_component.dart';
import 'package:photoapp/model/background.dart';
import 'package:photoapp/routes/route_name.dart';
import 'package:photoapp/view/chats_view.dart';
import 'package:photoapp/view/profile_view.dart';
import 'package:photoapp/view/search_view.dart';

import '../component/button_component.dart';
import '../component/list_component.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({super.key});

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: switch (_currentIndex) {
        0 => const HomeDiscover(), // Màn hình Home
        1 => const SearchView(), // Màn hình Search
        2 => const HomeDiscover(), // Màn hình New
        3 => const ChatsView(), // Màn hình Comment
        4 => const ProfileView(), // Màn hình Person
        _ => const HomeDiscover(),
      },
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/home.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/search.png"), label: "Search"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/new.png"), label: "New"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/Comment.png"), label: "Chat"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/bell.png"), label: "Person")
        ],
        showSelectedLabels: false,
      ),
    );
  }
}

class HomeDiscover extends StatefulWidget {
  const HomeDiscover({super.key});

  @override
  State<HomeDiscover> createState() => _HomeDiscoverState();
}

class _HomeDiscoverState extends State<HomeDiscover> {
  List<Background> listBackground = [
    const Background(
        id: 1,
        urlImage: "assets/images/Rectangle 2_8.png",
        urlAvatar: "assets/images/Ellipse.png",
        name: "Ridhwan Nordin",
        email: "ridzjcob"),
    const Background(
        id: 2,
        urlImage: "assets/images/Rectangle 2.9.png",
        urlAvatar: "assets/images/Ellipse 1.png",
        name: "Clem Onojeghuo",
        email: "clemono2"),
    const Background(
        id: 3,
        urlImage: "assets/images/Rectangle 2.10.png",
        urlAvatar: "assets/images/Ellipse 2.png",
        name: "Jon Tyson",
        email: "jontyson"),
    const Background(
        id: 4,
        urlImage: "assets/images/Rectangle 2_11.png",
        urlAvatar: "assets/images/Ellipse 3.png",
        name: "Simon Zhu",
        email: "smnzhu")
  ];

  List<String> urlImageAll = [
    "assets/images/Rectangle 2.png",
    "assets/images/Rectangle 2_1.png",
    "assets/images/Rectangle 2_2.png",
    "assets/images/Rectangle 2_3.png",
    "assets/images/Rectangle 2_4.png",
    "assets/images/Rectangle 2_5.png",
    "assets/images/Rectangle 2_6.png",
    "assets/images/Rectangle 2_7.png",
    "assets/images/Rectangle 2_9_1.png",
    "assets/images/Rectangle 2_10_1.png",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 76, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const NormaTextComfortaa(
                text: "Discover",
              ),
              const SizedBox(
                height: 32,
              ),
              const NormaText(
                text: "What’s new today",
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 24,
              ),
              CarouselSlider(
                  items: listBackground
                      .map((e) => ListBackGround(
                            backGround: e,
                            onTap: () {
                              Get.toNamed(RouterName.photo, arguments: {
                                'urlImage': e.urlImage,
                              });
                            },
                          ))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true, viewportFraction: 1.0, height: 387)),
              const SizedBox(
                height: 48,
              ),
              const NormaText(
                text: "BROWSE ALL",
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 24,
              ),
              MasonryGridView.builder(
                  shrinkWrap: true,
                  itemCount: urlImageAll.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 9, bottom: 10),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(RouterName.photo, arguments: {
                              'urlImage': urlImageAll[index],
                            });
                          },
                          child: Image.asset(urlImageAll[index]),
                        ),
                      )),
              const SizedBox(
                height: 32,
              ),
              CustomButtonComponent(
                text: 'SEE MORE',
                disableBackgroundColor: Colors.white,
                backgroundColor: Colors.white,
                width: double.maxFinite,
                onPressed: () {},
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
