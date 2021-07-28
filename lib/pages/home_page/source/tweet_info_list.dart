import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/tweet_structure/tweet_structure.dart';

var image = <String>[
  'https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png',
  'https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png',
  'https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png',
  'https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png',
  'https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png',
];

var name = <String>[
  'Cat Lulu',
  'Cat Lulu',
  'Cat Lulu',
  'Cat Lulu',
  'Cat Lulu',
];
var tweet = <String>[
  'This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!',
  'This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!',
  'This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!',
  'This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!',
  'This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!',
];
var nickName = <String>[
  '@cat_lulu.12 saat',
  '@cat_lulu.12 saat',
  '@cat_lulu.12 saat',
  '@cat_lulu.12 saat',
  '@cat_lulu.12 saat',
];

List<Widget> tweetsPostList(BuildContext context) {
  var widgetList = <Widget>[];
  for (var i = 0; i < image.length; i++) {
    widgetList.add(
        buildTweetStructure(image[i], name[i], tweet[i], nickName[i], context));
  }
  return widgetList;
}

Container buildTweetsPost(BuildContext context) {
  return Container(
    height: 100,
    child: ListView(
      reverse: false,
      scrollDirection: Axis.vertical,
      children: tweetsPostList(context),
    ),
  );
}
