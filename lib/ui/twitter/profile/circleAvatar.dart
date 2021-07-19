import 'package:flutter/material.dart';

Padding buildCircleAvatar(String image,double radius) {
  return Padding(
    padding: EdgeInsets.only(right:3,left:3),
    child: CircleAvatar(
      radius: radius,
      backgroundColor: Colors.black,
      child: ClipOval(
        child: Image.network(image),
      ),
    ),
  );
}
