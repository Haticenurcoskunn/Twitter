import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_first_app/ui/twitter/profile/circleAvatar.dart';
import 'package:flutter_first_app/ui/twitter/profile/twitter_top_Info_title.dart';

DrawerHeader buildDrawerHeader(BuildContext context) {
  return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCircleAvatar(
              'https://www.hepsiburada.com/kesfet/wp-content/uploads/2020/11/iStock-1063193874-800x533.jpg',
              25),
          twitterTopInfoTitle(context, '', '')
        ],
      ));
}
