import 'package:flutter/material.dart';

buildRoundImageWithBorder(String image, double radius,double height,double weight) {
  return Container(
    margin:EdgeInsets.only(right:10,left:10),
    height: height,
    width:weight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
               border: Border.all(
                 color: Colors.blue,
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
    );
}
