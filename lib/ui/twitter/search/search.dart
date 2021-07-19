import 'package:flutter/material.dart';
import 'package:flutter_first_app/ui/twitter/home/drawer.dart';
import 'package:flutter_first_app/ui/twitter/search/journalList.dart';
import 'package:flutter_first_app/ui/twitter/search/search_appBar.dart';
import 'package:flutter_first_app/ui/twitter/search/top_image_container.dart';

class TwitterSearchPage extends StatefulWidget {
  @override
  _TwitterSearchPageState createState() => _TwitterSearchPageState();
}

class _TwitterSearchPageState extends State<TwitterSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildSearchAppBar(context),
        drawer: buildDrawer(context),
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTopImageContainer(context),
              buildHeadLine(),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: buildJournalTitleList(context),
              )
            ],
          ),
        ));
  }

  Text buildHeadLine() {
    return Text(
      '  İlginizi çekicek gündemler',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
    );
  }
}
