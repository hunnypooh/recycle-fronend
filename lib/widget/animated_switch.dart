import 'package:flutter/material.dart';

class AnimatedSwitch extends StatefulWidget {
  @override
  _AnimatedSwitchState createState() => _AnimatedSwitchState();
}

class _AnimatedSwitchState extends State<AnimatedSwitch> {
  var isEnabled = false;
  final animationDuration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEnabled = !isEnabled;
        });
      },
      child: AnimatedContainer(
        height: 35,
        width: 60,
        duration: animationDuration,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isEnabled ? Color(0xFF38D592) : Color(0xFFD9D9D9),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: AnimatedAlign(
          duration: animationDuration,
          alignment: isEnabled ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
