import 'package:flutter/material.dart';

import './log_in_finish_screen.dart';

class LonInSelectScreen extends StatefulWidget {
  const LonInSelectScreen({Key? key}) : super(key: key);

  @override
  State<LonInSelectScreen> createState() => _LonInSelectScreenState();
}

class _LonInSelectScreenState extends State<LonInSelectScreen> {
  final _buttons = [
    {'text': '버거킹', 'isSelected': false},
    {'text': '중상', 'isSelected': false},
    {'text': '좌상', 'isSelected': false},
  ];
  Color finishColor = Color(0xFFD9D9D9);

  void answerButton(index) {
    setState(() {
      _buttons[0]['isSelected'] = false;
      _buttons[1]['isSelected'] = false;
      _buttons[2]['isSelected'] = false;
      _buttons[index]['isSelected'] = true;
      finishColor = Color(0xFF38D592);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 120,
                    ),
                    Container(
                      //회원님의 직업을 선택해주세요
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "회원님의",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "직업",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: "을 선택해주세요",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    _buildButton(_buttons[0], 0, () => answerButton(0)),
                    SizedBox(height: 15),
                    _buildButton(_buttons[1], 1, () => answerButton(1)),
                    SizedBox(height: 15),
                    _buildButton(_buttons[2], 2, () => answerButton(2)),
                  ],
                ),
              )),
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => LogInFinishScreen(),
                      ),
                    );
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

Widget _buildButton(Map<String, Object> button, int index, Function onPressed) {
  String text = button['text'] as String;
  bool isSelected = button['isSelected'] as bool;
  return SizedBox(
    width: double.infinity,
    child: OutlinedButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      style: OutlinedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        alignment: Alignment.centerLeft,
        side: isSelected
            ? BorderSide(
                color: Color(0xFF38D592),
              )
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.0),
        ),
      ),
      onPressed: onPressed as void Function(),
    ),
  );
}
