import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/ui/twitter/profile/buildcart_list.dart';
import 'package:flutter_first_app/ui/twitter/profile/twitter_Top_Info.dart';
import 'package:flutter_first_app/ui/twitter/profile/twitter_content.dart';
import 'package:flutter_first_app/ui/twitter/profile/twitter_top_Info_title.dart';

class TwitterProfileScreen extends StatefulWidget {
  @override
  _TwitterProfileScreenState createState() => _TwitterProfileScreenState();
}

class _TwitterProfileScreenState extends State<TwitterProfileScreen>
// undefined context hatası için classın içine al üstüne en alta değil
    with
        TickerProviderStateMixin {
  ScrollController scrollController = ScrollController(
    initialScrollOffset: 8, // or whatever offset you wish
    keepScrollOffset: true,
  );

  final controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              twitterTopInfo(context),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: twitterTopInfoTitle(context, 'I LOVE CAT FOOD', 'Ocak 2021 tarihinde katıldı'),
              ),
              buildTabBarHeadText(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                child: TabBarView(
                  children: buildContentList(context),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: ListView(
                  shrinkWrap: true,
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  children: buildCardList(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TabBar buildTabBarHeadText() {
    return TabBar(
      tabs: [
        Tab(child: Text('Tweet')),
        Tab(child: Text('Tweetler ve yanıtlar')),
        Tab(child: Text('Medya')),
        Tab(child: Text('Beğeniler')),
      ],
    );
  }
}

Tab buildtabBar(String title) {
  return Tab(child: Text(title, style: TextStyle(color: Colors.blue, fontSize: 5)));
}
