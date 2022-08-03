import 'package:flutter/material.dart';
import 'package:recycle/collector/collector_list_item.dart';
import 'package:recycle/dummy_data.dart';

class CollectorListScreen extends StatelessWidget {
  final collectorList = DUMMY_COLLECTORS;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return CollectorListItem(
            id: collectorList[index].id,
            title: collectorList[index].title,
            time: collectorList[index].time,
            total: collectorList[index].total,
            weight: collectorList[index].weight,
          );
        }),
        itemCount: collectorList.length,
      ),
    );
  }
}
