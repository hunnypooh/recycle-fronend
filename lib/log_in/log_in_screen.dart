import 'package:flutter/material.dart';

import './log_in_select_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    width: 283,
                    image: AssetImage('assets/images/login_image.png'),
                  ),
                  SizedBox(height: 15),
                  Image(
                    width: 177,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '재활용 활동의 정확한 추적과 정당한 보상',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF38D592),
                    ),
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
                  primary: Color.fromRGBO(250, 229, 76, 1.0),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                child: Text(
                  '카카오 계정으로 로그인',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => LonInSelectScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
