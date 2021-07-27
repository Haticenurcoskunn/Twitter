import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/round_image_with_border.dart';
import 'package:flutter_first_app/utils/tweet_structure/buttons.dart';

ListTile buildTweetStructure(
  String image,
  String title,
  String subtitle,
  String date,
  BuildContext context,
) {
  return ListTile(
    leading: buildRoundImageWithBorder(image,30,60,60),
    title: Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 3),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            date,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    ),
    subtitle: Column(
      children: [
        Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
        Buttons(),
      ],
    ),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    ),
  );
}
