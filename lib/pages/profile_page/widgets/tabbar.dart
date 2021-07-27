import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SizedBox tabBar(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 8,
    width: MediaQuery.of(context).size.width,
    child: DefaultTabController(
        length: 4,
        child: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.grey[100],
              indicatorColor: Colors.blue[400],
              tabs: [
                buildtabBar('Tweet'),
                buildtabBar('Tweetler ve yanıtlar'),
                buildtabBar('Medya'),
                buildtabBar('Beğeniler'),
              ],
            ))),
  );
}

Tab buildtabBar(String title) {
  return Tab(
      child:
          Text(title, style: TextStyle(color: Colors.blue[400], fontSize: 12)));
}
