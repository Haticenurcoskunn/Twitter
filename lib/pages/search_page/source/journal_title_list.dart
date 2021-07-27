import 'package:flutter/cupertino.dart';
import 'package:flutter_first_app/pages/search_page/widgets/journal_titles_info.dart';

var headText = <String>[
  'Türkiye gündeminden',
  'Türkiye gündeminden',
  'Türkiye gündeminden',
  'Türkiye gündeminden',
  'Türkiye gündeminden',
  'Türkiye gündeminden',
];

var title = <String>[
  '#Covid-19',
  '#Covid-19',
  '#Covid-19',
  '#Covid-19',
  '#Covid-19',
  '#Covid-19',
];

var subTitle = <String>[
  '5050 tweet',
  '5050 tweet',
  '5050 tweet',
  '5050 tweet',
  '5050 tweet',
  '5050 tweet',
];

List<Widget> buildJournalTitles(BuildContext context) {
  var widgetList = <Widget>[];

  for (var i = 0; i < subTitle.length ; i++) {
    widgetList.add(buildJournalTitlesInfo(headText[i], title[i], subTitle[i]));
  }

  return widgetList;
}
