import 'package:flutter/material.dart';
import 'package:recycle/collector/collector_sell_list_item.dart';
import 'package:recycle/dummy_data.dart';

class CollectorSellListScreen extends StatelessWidget {
  final collectorSellList = DUMMY_COLECTOR_SELLS;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return CollectorSellListItem(
            id: collectorSellList[index].id,
            time: collectorSellList[index].time,
            total: collectorSellList[index].total,
            weight: collectorSellList[index].weight,
          );
        }),
        itemCount: collectorSellList.length,
      ),
    );
  }
}
