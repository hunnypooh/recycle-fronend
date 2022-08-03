import 'package:flutter/material.dart';

import 'collector_detail_screen.dart';

class CollectorQrScreen extends StatelessWidget {
  const CollectorQrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffECBAB8),
      child: Center(
        child: GestureDetector(
          child: Image(
            width: 190,
            image: AssetImage('assets/images/qr.png'),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => CollectorDetailScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
