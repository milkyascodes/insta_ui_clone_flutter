// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class InstaSreen extends StatelessWidget {
  const InstaSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: FaIcon(FontAwesomeIcons.home), label: ''),
          NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.search), label: ''),
          NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.photoVideo), label: ''),
          NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.heart), label: ''),
          NavigationDestination(icon: FaIcon(FontAwesomeIcons.user), label: ''),
        ],
      ),
    );
  }
}
