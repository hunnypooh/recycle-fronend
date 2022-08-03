import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'buyer_list_screen.dart';
import 'buyer_qr_screen.dart';

class BuyerHomeScreen extends StatefulWidget {
  const BuyerHomeScreen({Key? key}) : super(key: key);

  @override
  State<BuyerHomeScreen> createState() => _BuyerHomeScreenState();
}

class _BuyerHomeScreenState extends State<BuyerHomeScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': BuyerQrScreen(),
      'title': '좌상구매',
      'isAppBarTrans': true,
    },
    {
      'page': BuyerListScreen(),
      'title': '수거내역',
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
        title: Text(
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
        ],
      ),
    );
  }
}
