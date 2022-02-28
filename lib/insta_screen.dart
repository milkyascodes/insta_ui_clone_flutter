// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'controllers/controller.dart';
import 'screens/activity_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile.dart';
import 'screens/reels_screen.dart';
import 'screens/search_screen.dart';

NavController controller = Get.put(NavController());

class InstaScreen extends StatelessWidget {
  const InstaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Obx(
          () => IndexedStack(
            index: controller.tabIndex.toInt(),
            children: [
              HomePage(),
              SearchPage(),
              ReelsPage(),
              ActivityPage(),
              ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 60,
            selectedIndex: controller.tabIndex.toInt(),
            onDestinationSelected: controller.tabIndex,
            destinations: [
              NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.home), label: 'Home'),
              NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.search), label: 'Search'),
              NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.cameraRetro), label: 'Reels'),
              NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.heart), label: 'Activity'),
              NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.user), label: 'Profile'),
            ],
          ),
        ));
  }
}
