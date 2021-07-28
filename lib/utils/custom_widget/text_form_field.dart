import 'package:flutter/material.dart';

Container buildTextFormField() {
  return Container(
      color: Colors.black,
      height: 200,
      width: 100,
      child: TextFormField(
        maxLines: 70,
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.blue,
        decoration: new InputDecoration(
          fillColor: Colors.yellow,
          border: InputBorder.none,
        ),
      ));
}
