import 'package:flutter/material.dart';

TextStyle blackStyle = TextStyle(
    fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black); //黑色样式
TextStyle redStyle = TextStyle(
    fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red); //红色样式

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(children: [
      new Text(
        '文本是视图系统中的常见控件，用来显示一段特定样式的字符串，就比如Android里的TextView，或是iOS中的UILabel。',
        textAlign: TextAlign.center, //居中显示
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red), //20号红色粗体展示
      ),
      Text.rich(
        TextSpan(children: <TextSpan>[
          TextSpan(
              text: '文本是视图系统中常见的控件，它用来显示一段特定样式的字符串，类似',
              style: redStyle), //第1个片段，红色样式
          TextSpan(text: 'Android', style: blackStyle), //第1个片段，黑色样式
          TextSpan(text: '中的', style: redStyle), //第1个片段，红色样式
          TextSpan(text: 'TextView', style: blackStyle) //第1个片段，黑色样式
        ]),
        textAlign: TextAlign.center,
      ),
      FloatingActionButton(
        onPressed: () => print('FloatingActionButton pressed'),
        child: Text('Btn'),
      ),
      FlatButton(
        onPressed: () => print('FlatButton pressed'),
        child: Text('Btn'),
      ),
      RaisedButton(
        onPressed: () => print('RaisedButton pressed'),
        child: Text('Btn'),
      ),
      FlatButton(
          color: Colors.yellow, //设置背景色为黄色
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //设置斜角矩形边框
          colorBrightness: Brightness.light, //确保文字按钮为深色
          onPressed: () => print('FlatButton pressed'),
          child: Row(
            children: [Icon(Icons.add), Text("Add")],
          )),
    ]);
  }
}
