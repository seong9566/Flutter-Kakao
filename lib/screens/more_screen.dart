import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/tab.dart';

//바텀 앱바의 ... 을 클릭시 사용됨.
class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("더보기"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(
              tabs.length,
              (index) => Column(
                    children: [
                      Icon(tabs[index].icon),
                      SizedBox(height: 5),
                      Text(tabs[index].text),
                    ],
                  )),
        ), // 한 줄에 4개씩
      ),
    );
  }
}
