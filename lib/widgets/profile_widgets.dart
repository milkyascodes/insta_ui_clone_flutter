import 'package:flutter/material.dart';

Widget follwersCount(
    dynamic number, String text, double boldness, bool isCenter) {
  return Column(
    crossAxisAlignment:
        isCenter ? CrossAxisAlignment.center : CrossAxisAlignment.start,
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
