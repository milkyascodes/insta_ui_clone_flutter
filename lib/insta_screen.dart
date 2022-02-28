// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'controllers/controller.dart';

// class NavController extends GetxController {
//   var tabIndex = 0;
//   void changeTabIndex(index) {
//     tabIndex = index;
//     update();
//   }
// }

NavController controller = Get.put(NavController());

//
class InstaScreen extends StatelessWidget {
  const InstaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
            onDestinationSelected: controller.tabIndex =
                controller.tabIndex as RxInt,
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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('home'));
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('SearchPage'));
  }
}

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(' Reels'));
  }
}

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Activity'));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('AccountPage'));
  }
}
