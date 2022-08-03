import 'package:flutter/material.dart';

import 'restaurant_my_page_email_screen.dart';
import 'restaurant_my_page_sticker_screen.dart';
import 'restaurant_my_page_notice_screen.dart';

class RestaurantMyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 95,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  "버거킹 신림점",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF38D592),
                ),
              ),
              Positioned(
                bottom: -17,
                right: -9,
                child: Image(
                  width: 110,
                  image: AssetImage('assets/images/mypage_logo.png'),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            child: _buildTile("이메일 변경"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => RestaurantMyPageEmailScreen(),
                ),
              );
            },
          ),
          _buildTile("지점 정보 변경"),
          GestureDetector(
            child: _buildTile("알림설정"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => RestaurantMyPageNoticeScreen(),
                ),
              );
            },
          ),
          GestureDetector(
            child: _buildTile("수거 및 스티커 신청"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => RestaurantMyPageStickerScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget _buildTile(String title) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(fontSize: 18),
    ),
    trailing: const Icon(
      Icons.arrow_forward_ios_rounded,
      size: 18,
    ),
  );
}
