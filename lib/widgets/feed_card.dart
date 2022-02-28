// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/widgets/circle_av.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

final dataCtrl = Get.put(DataController());

class FeedCard extends StatelessWidget {
  const FeedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return dataCtrl.obx((data) => Center(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: data!.length,
            shrinkWrap: true,
            itemBuilder: (context, int index) {
              // return Card(
              //   elevation: 0,
              //   child: Column(
              //     children: [
              // ListTile(
              //   title: Text(data[index]['first_name'].toString()),
              //   trailing: Icon(Icons.more_vert),
              //   leading: CircleAvatar(
              //     backgroundImage: NetworkImage(data[index]['avatar']),
              //   ),
              // )

              return Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data[index]['avatar']),
                      ),
                      title: Text(data[index]['first_name'].toString()),
                      trailing: Icon(Icons.more_vert),
                    ),
                    Container(
                      height: 300,
                      color: Colors.grey[300],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.heart)),
                            IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.comment)),
                            IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.paperPlane)),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.bookmark)),
                      ],
                    ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}

// class StoryCard extends StatelessWidget {
//   const StoryCard({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return dataCtrl.obx(
//       (data) => SingleChildScrollView(
//         child: ListView.builder(
//             itemCount: data!.length,
//             scrollDirection: Axis.horizontal,
//             shrinkWrap: true,
//             itemBuilder: (context, int index) {
//               return storyCard(data[index]['first_name'].toString());
//             }),
//       ),
//     );
//   }
// }
