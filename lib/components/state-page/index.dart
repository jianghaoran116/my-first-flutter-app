import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './page1.dart';

class StatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('State Page')),
      body: new Page1(),
    );
  }
}

// import 'package:flutter/material.dart';
// import './page1.dart';

// class StatePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'State Page',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Page1());
//   }
// }
