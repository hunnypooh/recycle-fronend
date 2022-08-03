import 'package:flutter/material.dart';

class LogInFinishScreen extends StatelessWidget {
  const LogInFinishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              width: 80,
              image: AssetImage('assets/images/success_icon.png'),
            ),
            SizedBox(height: 15),
            Text(
              '가입이',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '완료되었습니다',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
