// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/widgets/circle_av.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

final dataCtrl = Get.put(DataController());

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return dataCtrl.obx(
      (data) => SizedBox(
        height: 230,
        child: ListView.builder(
            itemCount: data!.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, int index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      storyCard(data[index]['first_name'].toString(),
                          data[index]['avatar'].toString()),
                      Text('Follows you'),
                      SizedBox(height: 2),
                      SizedBox(
                          width: 160,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Edit Profile'))),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
