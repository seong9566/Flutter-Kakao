import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/chat_room_screen.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({required this.chat, Key? key}) : super(key: key);

  final chat;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 채팅방을 클릭하면 채팅 룸으로 이동하는 버튼  - onTap
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatRoomScreen(),
            ));
      },
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(chat.image),
              ),
              title: Text(
                chat.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(chat.content),
              contentPadding: const EdgeInsets.all(0),
            ),
          ),
          Column(
            children: [
              Text(
                chat.time,
                style: TextStyle(color: Color(0xFFa5a5a5), fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              if (chat.count != "0")
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFde6344),
                  ),
                  child: Text(
                    chat.count,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
