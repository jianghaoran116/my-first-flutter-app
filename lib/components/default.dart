import 'package:flutter/widgets.dart';

class DefaultItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Image(
        image: new AssetImage("assets/favicon.ico")
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(0, 0, 0, 0),
          width: 3.0,
          style: BorderStyle.solid
        )
      )
    );
  }
}