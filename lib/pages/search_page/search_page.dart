import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/appbar.dart';
import 'package:flutter_first_app/pages/search_page/source/journal_title_list.dart';
import 'package:flutter_first_app/pages/search_page/widgets/top_image_info.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';
import 'package:flutter_first_app/utils/custom_widget/elevated_button.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(
          context,
          widget: elevatedButton(
            context,
            title:
                "twitter'da ara\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  ",
            textColor: Colors.grey,
            primaryColor: Color(0xFF2C2A2C),
            height: 35,
            radius: 40,
            borderSideColor: Color(0xFF2C2A2C),
          ),
          actions: buildBlueIcon(Icons.settings),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTopImageInfo(context),
              Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 20),
                  child: buildTitle('İlginizi çekebilcek gündemler',
                      Colors.white, FontWeight.bold, 23)),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: buildJournalTitles(context),
              )
            ],
          ),
        ));
  }
}
