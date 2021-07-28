import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

Column buildImageSubtitle() {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTitle('Cat Dru', Colors.white, FontWeight.bold, 15),
      buildTitle('@cat_dru\n', Colors.grey[600]!, FontWeight.normal, 15),
      Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTitle('77 ', Colors.grey[400]!, FontWeight.bold, 15),
              buildTitle('Takipçi  ', Colors.grey[600] ?? Colors.grey,
                  FontWeight.normal, 18)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTitle('100 ', Colors.grey[400]!, FontWeight.bold, 15),
              buildTitle('Takip', Colors.grey[600]!, FontWeight.normal, 15),
            ],
          ),
        ],
      )
    ],
  );
}
