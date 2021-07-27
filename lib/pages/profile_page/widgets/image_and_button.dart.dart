import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/elevated_button.dart';
import 'package:flutter_first_app/utils/custom_widget/round_image.dart';

Container imageAndButton(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 2.6,
    width: MediaQuery.of(context).size.width,
    alignment: Alignment.bottomLeft,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      buildRoundImage('https://i.pinimg.com/280x280_RS/fb/c7/5c/fbc75cb3c4df45700a84d955333b33b6.jpg',60,90),
      elevatedButton(context, title: 'Profili Düzenle', textColor: Colors.blue, primaryColor: Colors.black, height: 35,radius: 30,borderSideColor: Colors.blue),
      ],
    ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://img.tamindir.com/2020/09/470608/photoshop-gokyuzu-degistirme-ozelligi.jpg'))),
  );
}

