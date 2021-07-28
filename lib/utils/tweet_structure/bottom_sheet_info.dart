import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

bottomSheetInfo(String title, IconData icon) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Row(
      children: [
        Icon(icon, color: Colors.white),
        buildTitle(title, Colors.white, FontWeight.normal, 30)
      ],
    ),
  );
}
