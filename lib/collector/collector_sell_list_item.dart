import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CollectorSellListItem extends StatelessWidget {
  final String id;
  final String time;
  final int total;
  final int weight;

  CollectorSellListItem({
    required this.id,
    required this.time,
    required this.total,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "수거일시 ${time}",
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF999EAA),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "총 ${total}캔 · 총 ${weight}kg",
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF00A364),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
