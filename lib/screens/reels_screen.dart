// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: appBar(
          "Reels",
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
