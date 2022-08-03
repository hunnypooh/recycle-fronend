import 'package:flutter/material.dart';

import '../widget/animated_switch.dart';

class RestaurantMyPageStickerScreen extends StatefulWidget {
  const RestaurantMyPageStickerScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantMyPageStickerScreen> createState() =>
      _RestaurantMyPageStickerScreenState();
}

class _RestaurantMyPageStickerScreenState
    extends State<RestaurantMyPageStickerScreen> {
  bool _isRequested = true;
  Color finishColor = Color(0xFFD9D9D9);
  void answerCount(index) {
    setState(() {
      finishColor = Color(0xFF38D592);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          '수거 및 스티커 신청',
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
              trailing: TextButton(
                child: Text(
                  '신청',
                  style: TextStyle(
                    color: Color(0xFF38D592),
                    fontSize: 17,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                "수거 요청",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              trailing: TextButton(
                child: Text(
                  '신청',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF38D592),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                "자동 수거 요청",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              trailing: AnimatedSwitch(),
            ),
            SizedBox(height: 10),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  hintText: '수량을 입력하세요',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF38D592),
                    ),
                  ),
                ),
                onChanged: answerCount,
              ),
              trailing: TextButton(
                child: Text(
                  '확인',
                  style: TextStyle(
                    fontSize: 17,
                    color: finishColor,
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
