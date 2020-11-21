import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:productivity/models/counter.dart';

class GroupItem extends StatefulWidget {
  final String assetUrl;

  final String text;

  GroupItem({@required this.assetUrl, this.text});

  @override
  _GroupItemState createState() =>
      _GroupItemState(assetUrl: assetUrl, text: text);
}

class _GroupItemState extends State<GroupItem> {
  String assetUrl;

  String text;

  Counter counter = new Counter();

  _GroupItemState({@required this.assetUrl, this.text = 'placeholder'});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => counter.increment(),
      child: Container(
        width: (MediaQuery.of(context).size.width) / 2 - 24 - 16,
        height: 160,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFF5F5F5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage(assetUrl),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 8),
                    child: Text(
                      text,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
                Observer(
                    builder: (_) => Text(
                          'You tapped: ${counter.value} times',
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
