import 'package:flutter/material.dart';
import 'pages/first.dart';
import 'pages/second.dart';
import 'pages/third.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Navigation Bar"),
        ),
        bottomNavigationBar: Material(
          color: Colors.blueAccent,
          child: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.alarm),
              ),
              Tab(
                icon: Icon(Icons.watch_later),
              ),
              Tab(
                icon: Icon(Icons.airplanemode_active),
              ),
            ],
            controller: controller,
          ),
        ),
        body: TabBarView(
          children: <Widget>[FirstTab(), SecondTab(), ThirdTab()],
          controller: controller,
        ));
  }
}
