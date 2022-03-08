import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/appbar.dart';
import '../widgets/discover_card.dart';
import '../widgets/feed_card.dart';
import '../widgets/highlights_card.dart';
import '../widgets/profile_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ProfileInfo(),

                // ** edit button
                SizedBox(height: 10),
                Flexible(
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(12))),
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
    );
  }
}
