import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_first_app/drawer/drawer_header/image_subtitle.dart';
import 'package:flutter_first_app/utils/custom_widget/round_image.dart';

Container buildDrawerHeader(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 3.9,
    child: DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildRoundImage(
                'https://i.pinimg.com/280x280_RS/fb/c7/5c/fbc75cb3c4df45700a84d955333b33b6.jpg',
                60,
                90),
            buildImageSubtitle(),
          ],
        )),
  );
}
