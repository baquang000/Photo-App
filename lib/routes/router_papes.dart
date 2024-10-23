import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:photoapp/routes/route_name.dart';
import 'package:photoapp/view/Individual_chat_view.dart';
import 'package:photoapp/view/chats_view.dart';
import 'package:photoapp/view/photo_view.dart';
import 'package:photoapp/view/profile_view.dart';
import 'package:photoapp/view/search_view.dart';

import '../view/discover_view.dart';
import '../view/introduction_view.dart';
import '../view/login_view.dart';
import '../view/register_next_view.dart';
import '../view/register_view.dart';

var pages = [
  GetPage(
      name: RouterName.intro,
      page: () => const IntroductionView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.register,
      page: () => RegisterView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.registerNext,
      page: () => RegisterNextView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.login,
      page: () => LoginView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.discover,
      page: () => const DiscoverView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.search,
      page: () => const SearchView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.photo,
      page: () => const PhotoView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.profile,
      page: () => const ProfileView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.chat,
      page: () => const ChatsView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
  GetPage(
      name: RouterName.individualChat,
      page: () => const IndividualChatView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300)),
];
