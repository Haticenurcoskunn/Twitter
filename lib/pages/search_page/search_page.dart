import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/search_page/source/journal_title_list.dart';
import 'package:flutter_first_app/pages/search_page/widgets/top_image_info.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTopImageInfo(context),
              Padding(
                padding: EdgeInsets.only(top:25,bottom: 20),
                child: buildTitle('İlginizi çekebilcek gündemler',Colors.white,FontWeight.bold, 23)),
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
