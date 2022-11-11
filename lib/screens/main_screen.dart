import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // 여러 페이지 이동 위함, children이 3개면 3개의 페이지
        index: _selectedIndex, // 현재 페이지 나타냄.
        children: [
          Center(child: Text("IndexStack 1")),
          Center(child: Text("IndexStack 2")),
          Center(child: Text("IndexStack 3")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          //ontap는 선택된 아이콘의 index번호 알려줌
          setState(() {
            _selectedIndex = index; //index값을 _selectedIndex에 저장된 화면에 알려줌.
          });
        },
        // 바텀 앱바의 아이콘들 정의
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsisH), label: "")
        ],
      ),
    );
  }
}
