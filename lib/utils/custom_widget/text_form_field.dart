import 'package:flutter/material.dart';

Container buildTextFormField() {
  return Container(
      color: Colors.black,
      height: 200,
      width: 250,
      child: TextFormField(
        maxLines: 70,
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.blue,
        decoration: new InputDecoration(
          hintText: 'Yanıtı tweetle',
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Colors.yellow,
          border: InputBorder.none,
        ),
      ));
}
