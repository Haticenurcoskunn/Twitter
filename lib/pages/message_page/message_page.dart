import 'package:flutter/material.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({ Key? key }) : super(key: key);
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/3),
          child: Center(
          child: Column(
           children: [
             buildTitle('Mesaj gönder,mesaj al', Colors.white, FontWeight.bold,30),
             buildTitle("   Direkt Mesajlar,sen ve Twitter'daki diğer\nkişiler arasında gerçekleşen özel sohbetlerdir.\n  Tweetleri medyaları ve daha fazlasını       paylaşabilirsiniz", Colors.grey, FontWeight.normal,18),
             Padding(
   padding: const EdgeInsets.only(top:150,left:260),
     child: ElevatedButton(
  onPressed: () {},
  child: Icon(Icons.menu, color: Colors.white),
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(20),
    primary: Colors.blue,
  ),
),
             )     
           ],
       ),
          ),
        ),);}
        
    }
    
    
    
    
    
    
    
    
    
    
    
