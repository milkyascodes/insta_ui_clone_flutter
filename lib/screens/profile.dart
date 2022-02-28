// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../widgets/appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: appBar(
          "Profile",
          IconButton(
            color: Colors.black,
            icon: FaIcon(FontAwesomeIcons.plusSquare),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: FaIcon(FontAwesomeIcons.bars),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
