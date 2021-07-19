import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SizedBox twitterTopInfoTitle(BuildContext context,String bio,String date) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 8,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topInfotext('Cat Dru', Colors.white, FontWeight.bold, 15),
        topInfotext('cat_dru', Colors.grey[600]!, FontWeight.normal, 13),
        topInfotext(bio, Colors.grey[300]!, FontWeight.normal, 13),
        topInfotext(date, Colors.grey[600]!,
            FontWeight.normal, 15),
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                topInfotext('77 ', Colors.grey[400]!, FontWeight.bold, 13),
                topInfotext('Takipçi   ', Colors.grey[600] ?? Colors.grey,
                    FontWeight.normal, 13)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                topInfotext('100 ', Colors.grey[400]!, FontWeight.bold, 13),
                topInfotext('Takip', Colors.grey[600]!, FontWeight.normal, 13),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

Text topInfotext(
    String title, Color color, FontWeight fontweight, double fontsize) {
  return Text(
    title,
    style: TextStyle(
        decoration: TextDecoration.none,
        fontWeight: fontweight,
        fontSize: fontsize,
        color: color),
  );
}
