import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/story_page/story_page.dart';

buildRoundImageWithBorder(BuildContext context, String image, double radius,
    double height, double weight) {
  bool isColor = true;
  return GestureDetector(
    onTap: () {
      isColor = !isColor;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => StoryPage()),
      );
    },
    child: Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      height: height,
      width: weight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        border: Border.all(
          color: isColor ? Colors.blue : Colors.grey,
          width: 3.5,
        ),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.black,
        child: ClipOval(
          child: Image.network(image),
        ),
      ),
    ),
  );
}
