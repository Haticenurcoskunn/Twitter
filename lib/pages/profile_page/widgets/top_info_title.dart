import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

SizedBox topInfoTitle(BuildContext context,{double heightRatio = 8.0}) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / heightRatio,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      buildTitle('Cat Dru', Colors.white, FontWeight.bold,15),
      buildTitle('cat_dru', Colors.grey[600]!, FontWeight.normal,13), 
      buildTitle('I LOVE CAT FOOD ', Colors.grey[300]!, FontWeight.normal, 13),
      buildTitle('Ocak 2021 tarihinde katıldı', Colors.grey[600]!, FontWeight.normal, 15),
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [buildTitle('77 ', Colors.grey[400]!, FontWeight.bold, 13),
              buildTitle('Takipçi  ', Colors.grey[600] ?? Colors.grey, FontWeight.normal, 13)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTitle('100 ', Colors.grey[400]!, FontWeight.bold, 13),
                buildTitle('Takip', Colors.grey[600]!, FontWeight.normal, 13),
              ],
            ),
          ],
        )
      ],
    ),
  );
}


