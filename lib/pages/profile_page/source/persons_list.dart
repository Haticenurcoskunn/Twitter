import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/round_image.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

var image = <String>[
  'https://www.hepsiburada.com/kesfet/wp-content/uploads/2020/11/iStock-1063193874-800x533.jpg',
  'https://tr.listelik.com/data/xfmg/thumbnail/15/15377-3c6183a451487ac41a85d86a0216cfb1.jpg?1575866768',
  'https://d.wattpad.com/story_parts/301/images/1600c3568087473f545748242459.jpg',
  'https://i.pinimg.com/736x/ec/d9/48/ecd948d05ae7289725215b4f25231989.jpg',
  'https://i.pinimg.com/originals/98/b2/33/98b2338f996afd295908d54842619947.jpg'
];

var name = <String>[
  'Cat Dru',
  'Cat Lulu',
  'Cat Zuzu',
  'Cat Ruru',
  'Cat Plu'
];

var nickname = <String>[
  '@catdru_0',
  '@catlulu_0',
  '@catzuzu_0',
  '@catruru_0',
  '@catplu_0',
  
];

List<Widget> buildPersonsList(BuildContext context) {
  var twitterCardList = <Widget>[];

  for (var i = 0; i < image.length; i++) {
    twitterCardList.add(buildCard(image[i], name[i], nickname[i]));
 }
return twitterCardList;
}

SizedBox buildCard(String image, String name, String nickname) {
  return SizedBox(
    height: 80,
    width: 100,
    child: Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.clear,
                color: Colors.grey[400],
                size: 15,
              ),
            ],
          ),
          buildRoundImage(image,40,90),
          buildTitle(name,Colors.white,FontWeight.bold,14),
          buildTitle(name,Colors.grey,FontWeight.bold,10),
          
        ],
      ),
    ),
  );
}

