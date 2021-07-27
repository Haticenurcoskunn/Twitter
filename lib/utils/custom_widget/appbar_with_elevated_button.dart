import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';
import 'package:flutter_first_app/utils/custom_widget/elevated_button.dart';

AppBar buildAppBarWithElevatedButton(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.blue),
      centerTitle: true,
      title: Center(
      child: elevatedButton(context,title:"twitter'da ara", textColor:Colors.grey, primaryColor:Color(0xFF2C2A2C), height: 35, radius: 40, 
      borderSideColor: Color(0xFF333233),
      rightPadding: 150,)),
      actions: [buildBlueIcon(Icons.settings)],
      backgroundColor: Colors.black,
    );
  }