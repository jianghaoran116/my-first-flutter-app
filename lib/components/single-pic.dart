import 'package:flutter/widgets.dart';

class SinglePic extends StatelessWidget {

  var info;

  SinglePic({this.info});

  @override
  Widget build(BuildContext context) {
    return _getItem(this.info);
  }

  Widget _getItem(itemInfo) {
    List<Widget> imageList = [];
    var itemData = itemInfo['data'];
    if (itemData['imageList'] != null) {
      List images = itemData['imageList'];
      imageList = images.map((imageUrl) {
        // print(imageUrl);
        return Expanded(
          flex: 1,
          child: new Image(
            image: new NetworkImage(imageUrl)
          )
        );
      }).toList();
    }

    String title = itemData['title'] == null
                  ? '默认的'
                  : itemData['title'];

    return new Row(
      children: [
        new Expanded(
          flex: 2,
          child: new Text(
            title,
            style: new TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
        ),
        new Expanded(
          flex: 1,
          child: new Row(
            children: imageList,
          )
        )
      ],
    );
  }
}