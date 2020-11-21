import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String assetUrl;
  final String text;

  ListItem({@required this.assetUrl, this.text});

  @override
  _ListItemState createState() =>
      _ListItemState(assetUrl: assetUrl, text: text);
}

class _ListItemState extends State<ListItem> {
  String text;

  String assetUrl;

  _ListItemState({@required this.assetUrl, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: (MediaQuery.of(context).size.width),
        height: 92,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Color(0xFFf2f3f4),
        ),
        margin: EdgeInsets.only(bottom: 8),
        child: ListTile(
          leading: Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xFFFEDFDE)),
            child: Image(image: AssetImage(assetUrl)),
          ),
          title: Text('placeholder'),
        ));
  }
}
