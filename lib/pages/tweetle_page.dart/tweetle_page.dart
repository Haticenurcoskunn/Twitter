import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/appbar_actions.dart';
import 'package:flutter_first_app/utils/custom_widget/appbar_leading.dart';
import 'package:flutter_first_app/utils/custom_widget/text_form_field.dart';
import 'package:flutter_first_app/utils/custom_widget/round_image.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

class TweetlePage extends StatefulWidget {
  const TweetlePage({Key? key}) : super(key: key);

  @override
  _TweetlePageState createState() => _TweetlePageState();
}

class _TweetlePageState extends State<TweetlePage> {
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
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: buildTitle(
                        'Taslaklar', Colors.blue, FontWeight.bold, 20)),
                buildAppbarElevatedButtonActions(context, 'Tweetle'),
              ],
            ),
          ],
          leading: buildAppbarLeading(context),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildRoundImage(
                      'https://i.pinimg.com/280x280_RS/fb/c7/5c/fbc75cb3c4df45700a84d955333b33b6.jpg',
                      60,
                      90),
                  buildTextFormField(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
