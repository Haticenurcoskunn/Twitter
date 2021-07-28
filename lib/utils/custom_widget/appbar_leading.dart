import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';

GestureDetector buildAppbarLeading(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: buildBlueIcon(Icons.close));
}
