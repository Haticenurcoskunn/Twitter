import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/profile_page/source/persons_list.dart';
import 'package:flutter_first_app/pages/profile_page/widgets/image_and_button.dart.dart';
import 'package:flutter_first_app/pages/profile_page/source/content_list.dart';
import 'package:flutter_first_app/pages/profile_page/widgets/top_info_title.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
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
              imageAndButton(context),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: topInfoTitle(context),
              ),
              buildTabBarHeadText(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                child: TabBarView(
                  children:
            buildContentList(context),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: ListView(
                  shrinkWrap: true,
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  children: buildPersonsList(context),
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
  return Tab(
      child: Text(title, style: TextStyle(color: Colors.blue, fontSize: 5)));
}
