import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget appBar(String text, IconButton iconButton1, IconButton iconButton2) {
  return AppBar(
    title: Text(
      text,
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: false,
    actions: [iconButton1, iconButton2],
    automaticallyImplyLeading: false,
    backgroundColor: Colors.grey[200],
    elevation: 0,
  );
}
