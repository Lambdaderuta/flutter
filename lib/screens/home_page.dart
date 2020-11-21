import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:productivity/widgets/group_item.dart';
import 'package:productivity/widgets/list_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(platform: TargetPlatform.iOS),
      builder: (context, child) => Material(
        child: Scaffold(
          body: CupertinoPageScaffold(
            child: Container(
              padding: EdgeInsets.only(top: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    child: Text(
                      'New activity',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 40, bottom: 16, left: 34, right: 34),
                    child: Text(
                      'Create your own',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFAFAFAF),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CupertinoButton(
                        color: Color(0xFFF5F5F5),
                        padding: EdgeInsets.zero,
                        child: ListTile(
                          leading: Icon(CupertinoIcons.add_circled, color: Colors.black,),
                          title: Text(
                            'Create Activity',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        onPressed: () => showMaterialModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            height: MediaQuery.of(context).size.height * 0.9,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(24, 20, 24, 40),
                              child: ListView(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 40),
                                    child: Center(
                                      child: Text(
                                        'Food',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ListItem(
                                    assetUrl: 'assets/1.png',
                                  ),
                                  ListItem(
                                    assetUrl: 'assets/2.png',
                                  ),
                                  ListItem(
                                    assetUrl: 'assets/3.png',
                                  ),
                                  ListItem(
                                    assetUrl: 'assets/4.png',
                                  ),
                                  ListItem(
                                    assetUrl: 'assets/5.png',
                                  ),
                                  ListItem(
                                    assetUrl: 'assets/6.png',
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    height: 62,
                    width: (MediaQuery.of(context).size.width),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 40, bottom: 16, left: 24, right: 24),
                    child: Text(
                      'Or choose from categories',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFAFAFAF),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Card(
                            GroupItem(
                              assetUrl: 'assets/tennis_ball.png',
                              text: 'Sport',
                            ),

                            GroupItem(
                                assetUrl: 'assets/donut.png', text: 'Food')
                          ],
                        ),
                        Row(
                          children: [
                            // Card(
                            GroupItem(
                              assetUrl: 'assets/dice.png',
                              text: 'Activity',
                            ),
                            GroupItem(
                              assetUrl: 'assets/guitar.png',
                              text: 'Music',
                            )
                          ],
                        ),
                        Row(
                          children: [
                            GroupItem(
                              assetUrl: 'assets/brush.png',
                              text: 'Hobby',
                            ),
                            GroupItem(
                              assetUrl: 'assets/bars.png',
                              text: 'Productivity',
                            ),
                            // Card(
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
