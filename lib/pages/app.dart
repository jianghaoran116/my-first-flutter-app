import 'dart:async';
import 'package:flutter/material.dart';
import '../components/state-page/index.dart';
import '../components/ui-page/index.dart';
// import '../components/index.dart' show ComponentCenter;

class MyListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(8.0),
        itemExtent: 46.0,
        children: <Widget>[
          GestureDetector(
              child: ListTile(
                  leading: Icon(Icons.looks_one), title: Text('State及生命周期')),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new StatePage();
                }));
              }),
          GestureDetector(
              child:
                  ListTile(leading: Icon(Icons.looks_two), title: Text('经典控件')),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new UIPage();
                }));
              }),
        ]);
  }
}

class PageContentState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('First App')),
      body: new MyListWidget(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 一定要重写buid方法 返回一套组件
    return MaterialApp(
      title: 'First Flutter',
      home: new PageContentState(),
    );
  }
}
