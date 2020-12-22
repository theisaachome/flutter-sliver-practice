import 'package:flutter/material.dart';
import 'package:sliverbasic/sliverlist/mysliverlist.dart';

class SliverBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          getListWithBuild(context),
          getList(),
          getGridListStatic(),
          getGridListExtent(),
          getGridListWithBuilder(),
        ],
      ),
    );
  }
}
