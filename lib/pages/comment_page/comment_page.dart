import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page/home_page.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';
import 'package:flutter_first_app/utils/custom_widget/divider.dart';
import 'package:flutter_first_app/utils/custom_widget/elevated_button.dart';
import 'package:flutter_first_app/utils/custom_widget/round_image.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              shadowColor: Colors.black,
              actions: [
                elevatedButton(context,
                    title: '  yanıtla  ',
                    textColor: Colors.white,
                    primaryColor: Colors.blue,
                    height: 10,
                    radius: 10,
                    borderSideColor: Colors.blue
                    )
              ],
              leading: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: buildBlueIcon(Icons.close)),
            ),
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              buildDivider(),
              Row(
                children: [
                  Container(
                      height: 60,
                      child: VerticalDivider(
                          color: Colors.yellow,
                          thickness: 2,
                          width: 20,
                          indent: 200,
                          endIndent: 200)),
                  buildTitle('@cat_dru', Colors.blue, FontWeight.bold, 19),
                  buildTitle('adlı kişiye yanıt olarak', Colors.grey,
                      FontWeight.normal, 14),
                ],
              ),
              Row(children: [
                buildRoundImage(
                    'https://i.pinimg.com/280x280_RS/fb/c7/5c/fbc75cb3c4df45700a84d955333b33b6.jpg',
                    60,
                    90)
              ])
            ])));
  }
}
