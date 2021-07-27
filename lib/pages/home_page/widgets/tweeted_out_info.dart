
import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/divider.dart';
import 'package:flutter_first_app/utils/tweet_structure/tweet_structure.dart';

Column buildTweetedOutInfo(BuildContext context) {
    return Column(
           children: [
         buildTweetStructure('https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png','Cat Lulu','This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!', '@cat_lulu.1 saat',context),
         buildDivider(),
         buildTweetStructure('https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png','Cat Lulu','This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!', '@cat_lulu.12 saat',context),
       buildDivider(),
         buildTweetStructure('https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png','Cat Lulu','This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!', '@cat_lulu.1 gün',context),
         buildDivider(),
         buildTweetStructure('https://i.pinimg.com/originals/9f/aa/a1/9faaa1fedc94c355a4256ba6207c7714.png','Cat Lulu','This interesting fact about cats is guaranteed to wow at your next dinner party. Did you know that originally it was thought that Egyptians domesticated the cat? But in 2004, French archaeologists discovered a 9,500 year old cat grave in Cyprus. This makes this the oldest known pet cat and it predates Egyptian art about cats by over 4,000 years!', '@cat_lulu.2 gün ',context),
           ],
         );
  }