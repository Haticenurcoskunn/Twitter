import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page/source/story_image_list.dart';
import 'package:flutter_first_app/pages/home_page/widgets/tweeted_out_info.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
