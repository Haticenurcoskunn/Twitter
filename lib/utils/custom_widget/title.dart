import 'package:flutter/material.dart';

Padding buildTitle(String title, Color color, FontWeight fontweight, double fontsize) {
  return Padding(
    padding: const EdgeInsets.only(left:10.0),
    child: Text(title,style: TextStyle(decoration: TextDecoration.none, fontWeight: fontweight, fontSize: fontsize, color: color),
    ),
  );
}