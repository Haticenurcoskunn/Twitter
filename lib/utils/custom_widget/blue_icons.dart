import 'package:flutter/material.dart';

IconButton buildBlueIcon(IconData icon,{double size = 25}) {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      icon,
      color: Colors.blue,
      size: size,
    ),
  );
}
