import 'package:flutter/material.dart';
import './log_in/log_in_screen.dart';
import './restaurant/restaurant_home_screen.dart';
import './collector/collector_home_screen.dart';
import './buyer/buyer_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: LogInScreen(),
      // home: RestaurantHomeScreen(),
      // home: CollectorHomeScreen(),
      home: BuyerHomeScreen(),
    );
  }
}
