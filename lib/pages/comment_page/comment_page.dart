import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/appbar_actions.dart';
import 'package:flutter_first_app/utils/custom_widget/appbar_leading.dart';
import 'package:flutter_first_app/utils/custom_widget/text_form_field.dart';
import 'package:flutter_first_app/pages/comment_page/widgets/titles.dart';
import 'package:flutter_first_app/pages/comment_page/widgets/vertical_divider.dart';
import 'package:flutter_first_app/utils/custom_widget/divider.dart';
import 'package:flutter_first_app/utils/custom_widget/round_image.dart';

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
          bottom: PreferredSize(
              child: Container(
                color: Colors.grey,
                height: 1,
              ),
              preferredSize: Size.fromHeight(3.0)),
          shadowColor: Colors.black,
          actions: [
            Row(
              children: [
                buildAppbarElevatedButtonActions(context, 'Yanıtla'),
              ],
            ),
          ],
          leading: buildAppbarLeading(context),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 16,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 43),
                    child: Container(
                      width: 4,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '@kullaniciadi' + 'adli kisiye yanit olarak',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildRoundImage(
                        'https://i.pinimg.com/280x280_RS/fb/c7/5c/fbc75cb3c4df45700a84d955333b33b6.jpg',
                        60,
                        90),
                    buildTextFormField(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
