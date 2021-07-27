import 'package:flutter/material.dart';

Padding buildRoundImage(String image,double radius,double width) {
  return Padding(
    padding: EdgeInsets.only(right:5,left:5),
    child:Container(
             width: width,
             height: 90,
             decoration: BoxDecoration(
               color: const Color(0xff7c94b6),
               image: DecorationImage(
                 image: NetworkImage(image),
                 fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.all( Radius.circular(radius)),
             ),
           ),
  );
}
