import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

final dataCtrl = Get.put(DataController());

class HighlightsCard extends StatelessWidget {
  const HighlightsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        highlightCard('New', true),
        highlightCard('New', false),
        highlightCard('New', false),
        highlightCard('New', false),
      ],
    );
  }
}

Widget highlightCard(String text, bool bg) {
  return Column(
    children: [
      CircleAvatar(
        radius: 38,
        backgroundColor: !bg ? Colors.grey[200] : Colors.black,
        child: bg
            ? const CircleAvatar(
                radius: 37,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 30,
                ),
              )
            : null,
      ),
      SizedBox(height: 4),
      Text(bg ? text : '')
    ],
  );
}
