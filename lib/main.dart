// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/screens/home_screen.dart';
import 'package:get/get.dart';

import 'insta_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: InstaScreen(),
  ));
}
