import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/getsture.dart' show AllowMultipleGestureRecognizer;

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Text('detail');
  }
}

class MultiplePic extends StatelessWidget {
  var info;

  MultiplePic({this.info});

  @override
  Widget build(BuildContext context) {
    return _getItem(this.info, context);
  }

  Widget _getItem(itemInfo, context) {
    List<Widget> imageList = [];
    var itemData = itemInfo['data'];
    if (itemData['imageList'] != null) {
      List images = itemData['imageList'];
      imageList = images.map((imageUrl) {
        // print(imageUrl);
        return Expanded(
            flex: 1, child: new Image(image: new NetworkImage(imageUrl)));
      }).toList();
    }

    String title = itemData['title'] == null ? '默认的' : itemData['title'];

    return RawGestureDetector(
      gestures: {
        AllowMultipleGestureRecognizer: GestureRecognizerFactoryWithHandlers<
            AllowMultipleGestureRecognizer>(
          () {
            return AllowMultipleGestureRecognizer();
          },
          (AllowMultipleGestureRecognizer instance) {
            instance.onTap = () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new Detail();
              }));
            };
          },
        )
      },
      child: new Column(
        children: [
          new Text(title, style: new TextStyle(fontWeight: FontWeight.bold)),
          new Expanded(
              flex: 1,
              child: new Row(
                children: imageList,
              ))
        ],
      ),
    );
  }
}
