import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './restaurant_qr_screen.dart';
import './restaurant_list_screen.dart';
import './restaurant_my_page_screen.dart';

class RestaurantHomeScreen extends StatefulWidget {
  const RestaurantHomeScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantHomeScreen> createState() => _RestaurantHomeScreenState();
}

class _RestaurantHomeScreenState extends State<RestaurantHomeScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': RestaurantQrScreen(),
      'title': '버거킹 신림점',
      'isAppBarTrans': true,
    },
    {
      'page': RestaurantListScreen(),
      'title': '12', //미수거 수량 표시
      'isAppBarTrans': false,
    },
    {
      'page': RestaurantMyPageScreen(),
      'title': '마이페이지',
      'isAppBarTrans': false,
    },
  ];

  int _selectedPageIndex = 0; //QR 스크린이 제일 먼저 띄워짐

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          _pages[_selectedPageIndex]['isAppBarTrans'] as bool,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: _selectedPageIndex == 1
            ? RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "미수거 ",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: _pages[_selectedPageIndex]['title'] as String,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF38D592),
                      ),
                    ),
                    TextSpan(
                      text: "캔",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            : Text(
                _pages[_selectedPageIndex]['title'] as String,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
        elevation: 0,
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        selectedItemColor: Color(0xFF38D592),
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'QR촬영',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/navigation_logo_icon.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/navigation_logo_icon.svg",
              color: Color(0xFF38D592),
            ),
            label: '수거내역',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'My',
          ),
        ],
      ),
    );
  }
}
