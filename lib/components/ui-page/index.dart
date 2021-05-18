import 'package:flutter/material.dart';
import './page1.dart';

class UIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('经典控件')),
      body: new Page1(),
    );
  }
}
