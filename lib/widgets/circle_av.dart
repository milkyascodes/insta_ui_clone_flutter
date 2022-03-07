// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

Widget circleAvatar(double radius, String img) {
  return CircleAvatar(
    backgroundImage: NetworkImage(img),
    child: Text(''),
    radius: radius,
  );
}

Widget storyCard(String text, String img) {
  return Container(
    width: 100,
    margin: EdgeInsets.all(4),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [circleAvatar(40, img), Text(text)],
    ),
  );
}
