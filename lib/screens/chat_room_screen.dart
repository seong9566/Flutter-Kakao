import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/chat_icon_button.dart';
import 'package:flutter_kakao/components/my_chat.dart';
import 'package:flutter_kakao/components/other_chat.dart';
import 'package:flutter_kakao/components/time_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  // 글 입력후 보내면 비워주는 컨트롤러
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFb2c7da),
      child: Scaffold(
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          TimeLine(time: "2022년 11월 11일 금요일"),
                          OtherChat(
                            name: "홍길동",
                            text: "새해 복 많이 받으세요",
                            time: "오전 10:10",
                          ),
                          MyChat(time: "오후 2:15", text: "선생님도 많이 받으세요"),
                          ...List.generate(chats.length,
                              (index) => chats[index]), // 새 글이 추가되면 화면에 나열
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    children: [
                      ChatIconButton(icon: Icon(FontAwesomeIcons.plusSquare)),
                      Expanded(
                        child: Container(
                          child: TextField(
                            controller: _textController,
                            maxLines: 1,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            onSubmitted: _handleSubmitted,
                          ),
                        ),
                      ),
                      ChatIconButton(icon: Icon(FontAwesomeIcons.smile)),
                      ChatIconButton(icon: Icon(FontAwesomeIcons.cog)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleSubmitted(text) {
    _textController.clear(); // 텍스트를 보내고 나면 비워줌.
    setState(() {
      chats.add(
        MyChat(
            time: DateFormat("a K:m")
                .format(new DateTime.now())
                .replaceAll("AM", "오전")
                .replaceAll("PM", "오후"),
            text: text),
      );
    });
  }
}
