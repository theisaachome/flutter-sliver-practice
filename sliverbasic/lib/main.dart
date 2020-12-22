import 'package:flutter/material.dart';
import 'package:sliverbasic/pages/sliver-advanced.dart';
import 'package:sliverbasic/pages/sliver-appbar.dart';
import 'package:sliverbasic/pages/sliver-basic.dart';
import 'package:sliverbasic/pages/sliver-persist-header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Sliver Basic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final pages = [
    SliverBasic(),
    SliverAppbarDemo(),
    SliverAdvanced(),
    SliverPersistHeaderDemo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
        items: BottomMenu.values
            .map((e) => BottomNavigationBarItem(
                icon: Icon(e.menuIcon), label: e.menulabel))
            .toList(),
      ),
    );
  }
}

enum BottomMenu {
  Basic,
  AppBar,
  Advanced,
  PersistHeader,
}

extension on BottomMenu {
  IconData get menuIcon {
    switch (this) {
      case BottomMenu.Advanced:
        return Icons.person;
        break;
      case BottomMenu.Basic:
        return Icons.menu;
        break;
      case BottomMenu.AppBar:
        return Icons.shop_sharp;
        break;
      case BottomMenu.PersistHeader:
        return Icons.flight_land;
        break;

      default:
        return null;
    }
  }

  String get menulabel {
    switch (this) {
      case BottomMenu.Advanced:
        return "advanced";
        break;
      case BottomMenu.Basic:
        return "Basic";
        break;
      case BottomMenu.AppBar:
        return "AppBar";
        break;
      case BottomMenu.PersistHeader:
        return "Header";
        break;

      default:
        return null;
    }
  }
}
