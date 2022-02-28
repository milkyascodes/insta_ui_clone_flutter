import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/screens/home_screen.dart';
import 'package:get/get.dart';

import 'insta_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InstaSreen(),
    );
  }
}
