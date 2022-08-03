import 'dart:async';

import 'package:flutter/material.dart';

class BuyerQrScreen extends StatefulWidget {
  const BuyerQrScreen({Key? key}) : super(key: key);

  @override
  State<BuyerQrScreen> createState() => _BuyerQrScreenState();
}

class _BuyerQrScreenState extends State<BuyerQrScreen> {
  bool _isselected = false;
  bool _isdelayed = false;
  double visible = 0.0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      child: Stack(
        children: [
          AnimatedContainer(
            color: Color(0xffECBAB8),
            height: _isselected ? size.height * 0.6 : size.height,
            duration: Duration(milliseconds: 500),
            child: Center(
              child: Image(
                width: 190,
                image: AssetImage('assets/images/qr.png'),
              ),
            ),
          ),
          if (_isdelayed)
            Container(
              alignment: Alignment.bottomCenter,
              child: buildBottom(size),
            )
        ],
      ),
      onTap: () {
        setState(() {
          _isselected = !_isselected;
          if (_isdelayed == true)
            setState(() {
              _isdelayed = !_isdelayed;
            });
          else
            Future.delayed(const Duration(milliseconds: 500), (() {
              setState(() {
                _isdelayed = !_isdelayed;
              });
            }));
          visible = 1.0;
        });
      },
    );
  }
}

Widget buildBottom(Size size) {
  return SizedBox(
    height: size.height * 0.4,
    width: size.width,
    child: Column(
      children: [
        SizedBox(height: 120),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "판매할 캔 : ",
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
        SizedBox(height: 10),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "중량 : ",
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
                text: " KG",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Container(
          width: double.infinity,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF38D592),
            ),
            child: Text(
              "등록하기",
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
