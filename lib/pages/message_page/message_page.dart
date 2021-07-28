import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/appbar.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';
import 'package:flutter_first_app/utils/custom_widget/elevated_button.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      appBar: buildAppBar(context,
          widget: elevatedButton(context,
              title:
                  "Kişi ve grupları ara\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  ",
              textColor: Colors.grey,
              primaryColor: Color(0xFF2C2A2C),
              height: 35,
              radius: 40,
              borderSideColor: Color(
                0xFF2C2A2C,
              )),
          actions: buildBlueIcon(Icons.settings)),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
        child: Center(
          child: Column(
            children: [
              buildTitle(
                  'Mesaj gönder,mesaj al', Colors.white, FontWeight.bold, 30),
              buildTitle(
                  "   Direkt Mesajlar,sen ve Twitter'daki diğer\nkişiler arasında gerçekleşen özel sohbetlerdir.\n  Tweetleri medyaları ve daha fazlasını paylaşabilirsiniz",
                  Colors.grey,
                  FontWeight.normal,
                  18),
            ],
          ),
        ),
      ),
    );
  }
}
