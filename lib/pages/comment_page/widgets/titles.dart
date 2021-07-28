import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

Row buildTitles() {
  return Row(
    children: [
      buildTitle('@cat_dru', Colors.blue, FontWeight.bold, 19),
      buildTitle(
          'adlı kişiye yanıt olarak', Colors.grey, FontWeight.normal, 14),
    ],
  );
}
