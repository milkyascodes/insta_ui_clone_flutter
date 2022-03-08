// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget circleAvatar(double radius, String img) {
  return CircleAvatar(
    backgroundImage: NetworkImage(img),
    child: Text(''),
    radius: radius,
  );
}

Widget storyCard(String text, String img) {
  return Container(
    width: 130,
    margin: EdgeInsets.all(4),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        circleAvatar(40, img),
        SizedBox(height: 15),
        Text(text),
      ],
    ),
  );
}
