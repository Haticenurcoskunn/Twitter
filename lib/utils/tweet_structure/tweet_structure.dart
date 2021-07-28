import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/divider.dart';
import 'package:flutter_first_app/utils/custom_widget/round_image_with_border.dart';
import 'package:flutter_first_app/utils/tweet_structure/bottom_sheet_info.dart';
import 'package:flutter_first_app/utils/tweet_structure/buttons.dart';

Column buildTweetStructure(
  String image,
  String title,
  String subtitle,
  String nickName,
  BuildContext context,
) {
  return Column(
    children: [
      ListTile(
        leading: buildRoundImageWithBorder(context, image, 30, 60, 60),
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 3),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                nickName,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        subtitle: Column(
          children: [
            Text(
              subtitle,
              style: TextStyle(color: Colors.white),
            ),
            Buttons(),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
      ),
      buildDivider()
    ],
  );
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SizedBox(
          height: 250,
          child: Column(
    
            children: [
              bottomSheetInfo('Bu tweet ilgimi çekmiyor', Icons.ac_unit),
              bottomSheetInfo('Bu tweet ilgimi çekmiyor', Icons.ac_unit),
              bottomSheetInfo('Bu tweet ilgimi çekmiyor', Icons.ac_unit),
              bottomSheetInfo('Bu tweet ilgimi çekmiyor', Icons.ac_unit),
              bottomSheetInfo('Bu tweet ilgimi çekmiyor', Icons.ac_unit),
            ],
          ),
        );
      });
}
