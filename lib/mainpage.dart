import 'package:dy_card/mainpages/managepage.dart';
import 'package:dy_card/mainpages/searchpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: '조회',
      icon: Icon(Icons.search),
    ),
    BottomNavigationBarItem(
      label: '관리',
      icon: Icon(Icons.manage_accounts_outlined),
    ),
  ];

  static const List pages = [SearchPage(), ManagePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DY Card',
          style: TextStyle(
              fontFamily: "NotoSansKR", fontSize: 23, color: Colors.black),
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 207, 207, 207),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
