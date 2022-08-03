import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'collector_sell_list_screen.dart';
import 'collector_list_screen.dart';
import 'collector_qr_screen.dart';

class CollectorHomeScreen extends StatefulWidget {
  const CollectorHomeScreen({Key? key}) : super(key: key);

  @override
  State<CollectorHomeScreen> createState() => _CollectorHomeScreenState();
}

class _CollectorHomeScreenState extends State<CollectorHomeScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CollectorQrScreen(),
      'title': '수거',
      'isAppBarTrans': true,
    },
    {
      'page': CollectorListScreen(),
      'title': '수거내역',
      'isAppBarTrans': false,
    },
    {
      'page': CollectorQrScreen(),
      'title': '판매',
      'isAppBarTrans': true,
    },
    {
      'page': CollectorSellListScreen(),
      'title': '판매내역',
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
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: '판매',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: '판매내역',
          ),
        ],
      ),
    );
  }
}
