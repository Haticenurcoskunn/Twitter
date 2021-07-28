import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page/source/story_image_list.dart';
import 'package:flutter_first_app/pages/tweetle_page.dart/tweetle_page.dart';
import 'package:flutter_first_app/utils/custom_widget/appbar.dart';
import 'package:flutter_first_app/pages/home_page/widgets/tweeted_out_info.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TweetlePage()),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: buildAppBar(context, widget: buildBlueIcon(Entypo.twitter),actions: buildBlueIcon(Icons.flare)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildStoryInfo(context),
            buildTweetedOutInfo(context),
          ],
        ),
      ),
    );
  }
}
