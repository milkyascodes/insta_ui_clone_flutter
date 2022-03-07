import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

Widget follwersCount(dynamic number, String text, double boldness) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        number.toString(),
        textAlign: TextAlign.start,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: boldness),
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
    ],
  );
}
