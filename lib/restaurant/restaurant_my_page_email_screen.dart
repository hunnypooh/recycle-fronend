import 'package:flutter/material.dart';

class RestaurantMyPageEmailScreen extends StatefulWidget {
  const RestaurantMyPageEmailScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantMyPageEmailScreen> createState() =>
      _RestaurantMyPageEmailScreenState();
}

class _RestaurantMyPageEmailScreenState
    extends State<RestaurantMyPageEmailScreen> {
  Color finishColor = Color(0xFFD9D9D9);
  void answerEmail(index) {
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
          '이메일 변경',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '변경할 이메일을 입력해주세요',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff999EAA),
                    ),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'recycleledger@naver.com',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF38D592)),
                      ),
                    ),
                    onChanged: answerEmail,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: finishColor,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                child: Text(
                  '완료',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (finishColor == Color(0xFF38D592)) {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
