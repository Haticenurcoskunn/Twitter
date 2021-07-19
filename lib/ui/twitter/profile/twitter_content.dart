import 'package:flutter/cupertino.dart';
import 'package:flutter_first_app/ui/twitter/profile/tweet_listTile.dart';

var profilePicture = <String>[
      'https://www.hepsiburada.com/kesfet/wp-content/uploads/2020/11/iStock-1063193874-800x533.jpg',
      'https://www.hepsiburada.com/kesfet/wp-content/uploads/2020/11/iStock-1063193874-800x533.jpg',
      'https://www.hepsiburada.com/kesfet/wp-content/uploads/2020/11/iStock-1063193874-800x533.jpg',
      'https://www.hepsiburada.com/kesfet/wp-content/uploads/2020/11/iStock-1063193874-800x533.jpg',
];

var name = <String>[
  'Cat Dru',
  'Cat Dru',
  'Cat Dru',
  'Cat Dru',
];

var subTitle = <String>[
  'Felis catus has had a very long relationship with humans. Ancient Egyptians may have first domesticated cats as early as 4,000 years ago. Plentiful rodents probably drew wild felines to human communities. The cats skill in killing them may have first earned the affectionate attention of humans. Early Egyptians worshipped a cat goddess and even mummified their beloved pets for their journey to the next world',
  'Felis catus has had a very long relationship with humans. Ancient Egyptians may have first domesticated cats as early as 4,000 years ago. Plentiful rodents probably drew wild felines to human communities. The cats skill in killing them may have first earned the affectionate attention of humans. Early Egyptians worshipped a cat goddess and even mummified their beloved pets for their journey to the next world',
  'Felis catus has had a very long relationship with humans. Ancient Egyptians may have first domesticated cats as early as 4,000 years ago. Plentiful rodents probably drew wild felines to human communities. The cats skill in killing them may have first earned the affectionate attention of humans. Early Egyptians worshipped a cat goddess and even mummified their beloved pets for their journey to the next world',
  'Felis catus has had a very long relationship with humans. Ancient Egyptians may have first domesticated cats as early as 4,000 years ago. Plentiful rodents probably drew wild felines to human communities. The cats skill in killing them may have first earned the affectionate attention of humans. Early Egyptians worshipped a cat goddess and even mummified their beloved pets for their journey to the next world',
];

var date = <String>[
  '@cat_dru.16 Haziran',
  '@cat_dru.16 Haziran',
  '@cat_dru.16 Haziran',
  '@cat_dru.16 Haziran',
];

List<Widget> buildContentList(BuildContext context) {
  var twitterList = <Widget>[];

  for (var i = 0; i <profilePicture.length; i++) {
    twitterList
        .add(buildListTile(profilePicture[i], name[i], subTitle[i], date[i]));
  }

  return twitterList;
}
