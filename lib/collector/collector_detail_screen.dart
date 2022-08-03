import 'package:flutter/material.dart';

class CollectorDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          '버거킹 신림점',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage('assets/images/map.png'),
            ),
          ),
          SizedBox(height: 25),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "수거할 캔 : ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: "29",
                  style: TextStyle(
                    color: Color(0xFF38D592),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " 캔",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF38D592),
              ),
              child: Text(
                "수거하기",
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("수량이 다릅니까?"),
                    Spacer(),
                    TextButton(
                      child: Text(
                        "매장 전화하기",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("가득 차지 않은 캔이 있습니까?"),
                    Spacer(),
                    TextButton(
                      child: Text(
                        "매장 전화하기",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
