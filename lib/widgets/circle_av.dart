// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

Widget circleAvatar(double radius) {
  return CircleAvatar(
    backgroundColor: Colors.amber,
    child: Text(''),
    radius: radius,
  );
}

Widget storyCard(String text) {
  return Container(
    width: 100,
    color: Colors.grey,
    margin: EdgeInsets.all(3),
    height: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [circleAvatar(40), Text(text)],
    ),
  );
}
