import 'package:flutter/material.dart';

import '../dummy_data.dart';
import 'restaurant_list_item.dart';

class RestaurantListScreen extends StatelessWidget {
  final restaurantList = DUMMY_RESTAURANTS;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "버거킹 신림점",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 18),
          Flexible(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return RestaurantListItem(
                  id: restaurantList[index].id,
                  title: restaurantList[index].title,
                  time: restaurantList[index].time,
                  isRecycle: restaurantList[index].isRecycle,
                  index: index,
                );
              }),
              itemCount: restaurantList.length,
            ),
          ),
        ],
      ),
    );
  }
}
