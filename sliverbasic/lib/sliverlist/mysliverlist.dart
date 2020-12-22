import 'package:flutter/material.dart';
import 'package:sliverbasic/constants/getColor.dart';

// static SliverChildList
SliverList getListStatic() {
  return SliverList(
      delegate: SliverChildListDelegate(
    List.generate(
        5,
        (index) => Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              height: 130,
              color: getRandomColors,
            )).toList(),
  ));
}

Widget getListWithBuild(context) {
  return SliverList(
    delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          color: getRandomColors,
          height: 150.0);
    }, childCount: 5),
  );
}

Widget getList() {
  return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      color: Colors.yellow,
      height: 150,
    );
  }, childCount: 5));
}

Widget getGridListStatic() {
  return SliverGrid.count(
    crossAxisCount: 4,
    mainAxisSpacing: 2,
    crossAxisSpacing: 2,
    children: List.generate(
        10,
        (index) => Container(
              color: myColor,
            )).toList(),
  );
}

Widget getGridListExtent() {
  return SliverGrid.extent(
    maxCrossAxisExtent: 300,
    children: List.generate(
        10,
        (index) => Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello $index",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                ],
              ),
            )).toList(),
  );
}

Widget getGridListWithBuilder() {
  return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(4),
            color: getRandomColors,
          );
        },
        childCount: 10,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4)
      // SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 190),
      );
}
