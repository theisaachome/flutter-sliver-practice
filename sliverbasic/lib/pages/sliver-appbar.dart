import 'package:flutter/material.dart';

class SliverAppbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("AppBar"),
            centerTitle: false,
            expandedHeight: 350,
            floating: true,
            snap: true,
            // pinned: true,
            actions: [IconButton(icon: Icon(Icons.edit), onPressed: () {})],
            flexibleSpace: FlexibleSpaceBar(
              // title: Text("Flexiable Space Bar"),
              // background: Image.network(
              //   "https://images.unsplash.com/photo-1584863431255-3997371dcc01?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
              //   fit: BoxFit.cover,
              // ),
              centerTitle: false,
              titlePadding: EdgeInsets.only(
                left: 10,
              ),
            ),
          ),
          // SliverAppBar(
          //   floating: true,
          //   snap: true,
          //   // stretch: true,
          //   // onStretchTrigger: () {
          //   //   // Function callback for stretch
          //   //   print("Hello");
          //   //   return;
          //   // },
          //   expandedHeight: 300.0,
          //   flexibleSpace: FlexibleSpaceBar(
          //     stretchModes: <StretchMode>[
          //       // StretchMode.zoomBackground,
          //       StretchMode.blurBackground,
          //       StretchMode.fadeTitle,
          //     ],
          //     centerTitle: true,
          //     title: const Text('Flight Report'),
          //     background: Stack(
          //       fit: StackFit.expand,
          //       children: [
          //         Image.network(
          //           'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
          //           fit: BoxFit.cover,
          //         ),
          //         const DecoratedBox(
          //           decoration: BoxDecoration(
          //             gradient: LinearGradient(
          //               begin: Alignment.center,
          //               end: Alignment.bottomCenter,
          //               colors: <Color>[
          //                 // Colors.green,
          //                 Color(0x60000000),
          //                 Color(0x00000000),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate([
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 4),
                  color: Colors.red,
                  child: Text(
                    " Start Container",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.purple),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.green),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.orange),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.yellow),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.pink),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.red),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.purple),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.green),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: Colors.orange),
              ]),
              itemExtent: 150),
        ],
      ),
    );
  }
}
