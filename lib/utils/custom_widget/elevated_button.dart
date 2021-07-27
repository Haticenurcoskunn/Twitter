
import 'package:flutter/material.dart';

Container elevatedButton(BuildContext context,{required String title,required Color textColor,required Color primaryColor,required double height,required double radius,required borderSideColor,double rightPadding=0}) {
  return Container(
    height:height,
        child: ElevatedButton(
          onPressed:(){},
          style: ElevatedButton.styleFrom(
            side: BorderSide(
              width: 2,
              color: borderSideColor,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),primary:primaryColor),child: Padding(
              padding: EdgeInsets.only(right:rightPadding),
              child: Text(title,style: TextStyle(color: textColor,fontSize: 15),
          ),
            ),
        ),
      );
}
