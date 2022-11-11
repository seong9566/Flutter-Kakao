import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/time_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFb2c7da),
        child: Scaffold(
          backgroundColor: Colors.transparent, // Scaffold가 배경을 가리지 않게 처리 - 중요
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "홍길동",
              style: Theme.of(context).textTheme.headline6,
            ),
            actions: [
              Icon(
                FontAwesomeIcons.search,
                size: 20,
              ),
              SizedBox(width: 25),
              Icon(
                FontAwesomeIcons.bars,
                size: 20,
              ),
              SizedBox(width: 25),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    TimeLine(time: "2022년 11월 11일 금요일"),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
