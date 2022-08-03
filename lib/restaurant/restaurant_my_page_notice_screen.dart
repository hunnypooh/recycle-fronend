import 'package:flutter/material.dart';

import '../widget/animated_switch.dart';

class RestaurantMyPageNoticeScreen extends StatelessWidget {
  const RestaurantMyPageNoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          '알림설정',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "QR 스티커 신청",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              trailing: AnimatedSwitch(),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                "수거 요청",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              trailing: AnimatedSwitch(),
            ),
          ],
        ),
      ),
    );
  }
}
