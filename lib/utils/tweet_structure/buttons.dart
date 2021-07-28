import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/comment_page/comment_page.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  bool isRetweet = true;
  bool isLike = true;
  int itemCountFirst = 20;
  int itemCountSecond = 30;
  bool colorChanger = true;
  late String title;
  @override
  Row build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CommentPage()));
            },
            icon: Icon(Icons.ac_unit),
            color: Colors.grey),
        Text('10', style: TextStyle(color: Colors.grey)),
        IconButton(
          onPressed: () {
            setState(() {
              isRetweet = !isRetweet;
              isRetweet ? itemCountFirst-- : itemCountFirst++;
            });
          },
          icon: Icon(Icons.ac_unit),
          color: isRetweet ? Colors.grey : Colors.green,
        ),
        Text(itemCountFirst.toString(), style: TextStyle(color: Colors.grey)),
        IconButton(
          onPressed: () {
            setState(() {
              isLike = !isLike;
              isLike ? itemCountSecond-- : itemCountSecond++;
            });
          },
          icon: Icon(Icons.ac_unit),
          color: isLike ? Colors.grey : Colors.pink,
        ),
        Text(itemCountFirst.toString(), style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
