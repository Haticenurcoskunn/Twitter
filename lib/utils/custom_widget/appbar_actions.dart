import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/elevated_button.dart';

Container buildAppbarElevatedButtonActions(BuildContext context, String title) {
  return elevatedButton(context,
      title: title,
      textColor: Colors.white,
      primaryColor: Colors.blue,
      height: 35,
      radius: 20,
      borderSideColor: Colors.blue);
}
