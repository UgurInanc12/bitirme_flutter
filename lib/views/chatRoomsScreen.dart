import 'package:bitirme_flutter/widgets/widget.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}



class _ChatRoomState extends State<ChatRoom> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 40,
        ),
        elevation: 0.0,
        centerTitle: false,

      ),
    body: SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 81),
          child: Text(
            "chat listelenecek alan",
            style: simpleTextStyle(),
          ),



        ),
      ),

    ),



    );
  }
}
