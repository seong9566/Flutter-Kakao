import 'package:flutter/material.dart';

class MyChat extends StatelessWidget {
  const MyChat({required this.time, required this.text, Key? key})
      : super(key: key);
  final String time;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(width: 5),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xFFfeec34),
              ),
              child: Text(text),
            ),
          )
        ],
      ),
    );
  }
}
