import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/ui/twitter/profile/circleAvatar.dart';


var profilePicture = <String>[

  'https://forum.donanimarsivi.com/attachments/1600557477521-jpeg.58079/',
  'https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgj6Y0xnDLICtG41nUoj71nhUBVFa3iFMfcw&usqp=CAU',
  'https://forum.donanimarsivi.com/attachments/1600557477521-jpeg.58079/',
  'https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgj6Y0xnDLICtG41nUoj71nhUBVFa3iFMfcw&usqp=CAU'

];

List<Widget> storyImageList(BuildContext context) {
  var widgetList = <Widget>[];

  for (var i = 0; i < profilePicture.length; i++) {
    widgetList.add(buildCircleAvatar(
             profilePicture[i],40));
      }
    
      return widgetList;
    }


  Container buildStoryContainer(BuildContext context) {
    return Container(
            height: 100,
            child: ListView(
        reverse: false,
       scrollDirection: Axis.horizontal,
       children: storyImageList(context),
),

          );
  }