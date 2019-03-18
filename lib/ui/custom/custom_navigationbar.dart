import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  final TabController controller;

  const MyNavigationBar({Key key, this.controller}) : super(key: key);

  @override
  State<StatefulWidget> createState() => NavigationState();
}

class NavigationState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.blue,
      child: new TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite_border),
            ),
            Tab(
              icon: Icon(Icons.person),
            )
          ],
          controller: widget.controller,),
    );
  }
}