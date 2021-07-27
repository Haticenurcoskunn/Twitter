import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

Column buildJournalTitlesInfo( String headText,String title,String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: ListTile(
          title: buildTitle(headText, Colors.grey,FontWeight.normal, 15),
          subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding:EdgeInsets.only(bottom:6,top: 6),child:buildTitle(title, Colors.white,FontWeight.bold,17) ,)
            
            ,buildTitle(subtitle, Colors.grey,FontWeight.normal,14),     
          ],      
          ),
                trailing: Icon(
                            Icons.more_vert,
                            color: Colors.grey[600],
                          )),
        ),
      ],
    );
  }
