import 'package:flutter/material.dart';

Column buildSearchListTile( String headText,String title,String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
           
                        title: Text(
                          headText,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          Text(subtitle, style: TextStyle(color: Colors.grey[600])),
                          ],
                        ),
                        trailing: Icon(
                          Icons.more_vert,
                          color: Colors.grey[600],
                        )),
       
      ],
    );
  }
