import 'package:flutter/material.dart';
import '../dummy_data.dart';
import 'restaurant_list_item_model.dart';

//RestaurantListScreen과 같은 데이터 사용.
class RestaurantQrScreen extends StatelessWidget {
  final restaurantList = DUMMY_RESTAURANTS;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: Color(0xffECBAB8),
          height: size.height * 0.6,
          child: Center(
            child: Image(
              width: 190,
              image: AssetImage('assets/images/qr.png'),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: buildBottom(size, restaurantList, context),
        ),
      ],
    );
  }
}

Widget buildBottom(Size size, List<RestaurantListItemModel> restaurantList,
    BuildContext context) {
  return SizedBox(
    height: size.height * 0.3 - 20,
    width: size.width,
    child: Column(
      children: [
        Container(
          height: size.height * 0.3 - 80,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 0,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: restaurantList[index].isRecycle
                          ? Color(0xffD9D9D9)
                          : Color(0xff00A364),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Expanded(
                          flex: 8,
                          child: Text(
                            restaurantList[index].title,
                            style: TextStyle(
                              fontSize: 18,
                              color: restaurantList[index].isRecycle
                                  ? Color(0xffD9D9D9)
                                  : Color(0xff00A364),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: TextButton(
                            child: Text(
                              '삭제',
                              style: TextStyle(
                                  color: restaurantList[index].isRecycle
                                      ? Color(0xffD9D9D9)
                                      : Colors.red),
                            ),
                            style: TextButton.styleFrom(
                              primary: Color(0xFFD8FAEB),
                              elevation: 0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              itemCount: restaurantList.length,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF38D592),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
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
