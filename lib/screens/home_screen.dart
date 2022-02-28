// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../widgets/appbar.dart';
import '../widgets/circle_av.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: appBar(
          "Instagram",
          IconButton(
            color: Colors.black,
            icon: FaIcon(FontAwesomeIcons.plusSquare),
            onPressed: () {
              // Navigator.of(context).pop();
            },
          ),
          IconButton(
            color: Colors.black,
            icon: FaIcon(FontAwesomeIcons.facebookMessenger),
            onPressed: () {
              // Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
                  Row(children: [for (var i = 0; i < 10; i++) storyCard('$i')]))
        ]),
      ),
    );
  }
}
