import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

AppBar buildAppBar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.blue),
    centerTitle: true,
    title: Center(
      child: buildBlueIcon(Entypo.twitter),
    ),
    actions: [
      buildBlueIcon(Icons.settings),
    ],
    backgroundColor: Colors.black,
  );
}
