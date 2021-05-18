import 'package:flutter/cupertino.dart';
import 'multiple-pic.dart';
import 'single-pic.dart';
import 'default.dart';

class ComponentCenter {
  Widget getMultiplePic(info) {
    return new MultiplePic(info: info);
  }


  Widget getSinglePic(info) {
    return new SinglePic(info: info);
  }

  Widget getDefault() {
    return new DefaultItem();
  }
}