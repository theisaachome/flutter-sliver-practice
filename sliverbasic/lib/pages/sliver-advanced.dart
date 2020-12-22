import 'dart:math';

import 'package:flutter/material.dart';

class SliverAdvanced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: MyDynamicHeader(),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                height: 200,
                color: Color(Random().nextInt(0xffffffff)),
              );
            },
          )),
        ],
      ),
    );
  }
}

class MyDynamicHeader extends SliverPersistentHeaderDelegate {
  int index = 0;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final Color color = Colors.primaries[index];
    return LayoutBuilder(
      builder: (c, constraints) {
        if (++index > Colors.primaries.length - 1) index = 0;
        final double percentage =
            (constraints.maxHeight - minExtent) / (maxExtent - minExtent);

        return Container(
          height: constraints.maxHeight,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 4.0, color: Colors.black45),
            ],
            gradient: LinearGradient(colors: [Colors.blue, color]),
          ),
          child: SafeArea(
              child: Center(
            child: CircularProgressIndicator(
              value: percentage,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          )),
        );
      },
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 75;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
