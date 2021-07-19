import 'package:flutter/material.dart';
import 'package:flutter_first_app/ui/twitter/home/appBar.dart';
import 'package:flutter_first_app/ui/twitter/home/drawer.dart';
import 'package:flutter_first_app/ui/twitter/home/story_Image_List.dart';
import 'package:flutter_first_app/ui/twitter/home/tweet_column.dart';



class TwitterHomeScreen extends StatefulWidget {
  @override
  _TwitterHomeScreenState createState() => _TwitterHomeScreenState();
}

class _TwitterHomeScreenState extends State<TwitterHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: buildAppBar(),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
           buildStoryContainer(context),
           buildTweetColumn(),
          ],
        ),
      ),
    );
  }
 
}
