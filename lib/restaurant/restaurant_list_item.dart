import 'package:flutter/material.dart';

class RestaurantListItem extends StatelessWidget {
  final String id;
  final String title;
  final String time;
  final bool isRecycle;
  int index;

  RestaurantListItem({
    required this.id,
    required this.title,
    required this.time,
    required this.isRecycle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "수거일시 ${time}",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF999EAA),
                    ),
                  ),
                  SizedBox(height: 5),
                  isRecycle
                      ? Text(
                          "수거완료",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF00A364),
                          ),
                        )
                      : Text(
                          "미수거",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.red,
                          ),
                        ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: isRecycle
                  ? SizedBox()
                  : ElevatedButton(
                      child: Text(
                        '삭제',
                        style: TextStyle(
                          color: Color(0xff00A364),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFD8FAEB),
                        elevation: 0,
                      ),
                      onPressed: () {},
                    ) as Widget,
            ),
          ],
        ),
      ),
    );
  }
}
