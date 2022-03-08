// // ignore_for_file: prefer_const_constructors

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

// import '../widgets/appbar.dart';
// import '../widgets/feed_card.dart';

// // class ProfilePage extends StatelessWidget {
// //   const ProfilePage({Key? key}) : super(key: key);
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: PreferredSize(
// //           preferredSize: Size.fromHeight(60.0),
// //           child: appBar(
// //             "Profile",
// //             IconButton(
// //               color: Colors.black,
// //               icon: FaIcon(FontAwesomeIcons.plusSquare),
// //               onPressed: () {},
// //             ),
// //             IconButton(
// //               color: Colors.black,
// //               icon: FaIcon(FontAwesomeIcons.bars),
// //               onPressed: () {},
// //             ),
// //           ),
// //         ),
// //         body: ProfileCard());
// //   }
// // }

// class Album {
//   // final int userId;
//   final int id;
//   final String avatar;

//   const Album({
//     // required this.userId,
//     required this.id,
//     required this.avatar,
//   });

//   factory Album.fromJson(json) {
//     return Album(
//       // userId: json['userId'],
//       id: json['id'],
//       avatar: json['avatar'],
//     );
//   }
// }

// Future getUser() async {
//   final response = await http.get(Uri.parse('https://reqres.in/api/users/1'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     print('success');
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     print('errr');
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   late Future futureAlbum;
//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = getUser();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(60.0),
//         child: appBar(
//           "Profile",
//           IconButton(
//             color: Colors.black,
//             icon: FaIcon(FontAwesomeIcons.plusSquare),
//             onPressed: () {},
//           ),
//           IconButton(
//             color: Colors.black,
//             icon: FaIcon(FontAwesomeIcons.bars),
//             onPressed: () {},
//           ),
//         ),
//       ),
//       body: FutureBuilder(
//         future: futureAlbum,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return Text('hi');
//           } else if (snapshot.hasError) {
//             return Text('errrorrr 😴 ${snapshot.error}');
//           }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//           // By default, show a loading spinner.
//           return const CircularProgressIndicator();
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/widgets/circle_av.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../widgets/appbar.dart';
import '../widgets/discover_card.dart';
import '../widgets/feed_card.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../widgets/highlights_card.dart';
import '../widgets/profile_widgets.dart';

Future<User> fetchUser() async {
  final response = await http.get(Uri.parse('https://reqres.in/api/users/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return User.fromJson(jsonDecode(response.body)['data']);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load User');
  }
}

class User {
  final int id;
  final String name;
  final String avatar;
  const User({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory User.fromJson(json) {
    return User(
        id: json['id'],
        name: json['first_name'] + ' ' + json['last_name'],
        avatar: json['avatar']);
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  late Future<User> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: appBar(
            "Profile",
            IconButton(
              color: Colors.black,
              icon: FaIcon(FontAwesomeIcons.plusSquare),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.black,
              icon: FaIcon(FontAwesomeIcons.bars),
              onPressed: () {},
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 800,
              child: Column(
                children: [
                  // ** user info
                  SizedBox(height: 10),
                  FutureBuilder<User>(
                    future: futureUser,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                circleAvatar(60, snapshot.data!.avatar),
                                follwersCount(61, 'Posts', 23, true),
                                follwersCount(700, 'Followers', 23, true),
                                follwersCount(20, 'Following', 23, true),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                follwersCount(
                                    snapshot.data!.name,
                                    ' About me,there is link in bio Insta clone \n with flutter 🔥',
                                    19,
                                    false),
                                SizedBox(),
                                SizedBox(),
                              ],
                            )
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }

                      // By default, show a loading spinner.
                      return const CircularProgressIndicator();
                    },
                  ),

                  // ** edit button
                  SizedBox(height: 10),
                  Flexible(
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(12))),
                          onPressed: () {},
                          child: Text('Edit Profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black))),
                    ),
                  ),

                  // ** horz scroll
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Discover people'),
                          TextButton(
                            onPressed: () {},
                            child: Text('See All '),
                          )
                        ],
                      ),
                      DiscoverCard()
                    ],
                  ),

                  // ** Story Hightlights
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      follwersCount(
                          'Story Highlights',
                          ' Keep your favourite stories on your profile',
                          19,
                          false),
                      const SizedBox(
                        height: 20,
                      ),
                      HighlightsCard(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
