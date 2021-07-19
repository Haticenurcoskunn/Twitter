import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: Center(
      child: buildTwitterIcon(Entypo.twitter),
    ),
    actions: [
      buildTwitterIcon(Icons.settings),
    ],
    backgroundColor: Colors.black,
  );
}

IconButton buildTwitterIcon(IconData icon) {
  return IconButton(
    onPressed: () {},
    icon: Icon(icon, color: Colors.blue[600]),
  );
}
