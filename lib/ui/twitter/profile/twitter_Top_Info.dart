import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container twitterTopInfo(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 2.1,
    width: MediaQuery.of(context).size.width,
    alignment: Alignment.bottomLeft,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.black,
          child: ClipOval(
            child: Image.network(
              'https://www.hepsiburada.com/kesfet/wp-content/uploads/2020/11/iStock-1063193874-800x533.jpg',
            ),
          ),
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {
              print(MediaQuery.of(context).size.height);
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                width: 1,
                color: Colors.blue,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              primary: Colors.black,
            ),
            child: Text(
              'Profili Düzenle',
              style: TextStyle(color: Colors.blue[600]),
            ),
          ),
        )
      ],
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://img.tamindir.com/2020/09/470608/photoshop-gokyuzu-degistirme-ozelligi.jpg'))),
  );
}
