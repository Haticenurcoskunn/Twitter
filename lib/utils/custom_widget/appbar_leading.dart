import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page/home_page.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';

GestureDetector buildAppbarLeading(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: buildBlueIcon(Icons.close));
}
