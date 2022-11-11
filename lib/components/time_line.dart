import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({required this.time, Key? key})
      : super(key: key); // time은 변수임 requred로 받자
  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF9cafbe),
      ),
      child: Text(
        time,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
