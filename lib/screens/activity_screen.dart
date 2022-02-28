// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/appbar.dart';
import '../widgets/circle_av.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: appBar(
          "Activity",
          IconButton(
            icon: Icon(null),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(null),
            onPressed: null,
          ),
        ),
      ),
    );
  }
}
