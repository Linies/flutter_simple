import 'package:flutter/material.dart';

class SettingTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SettingState();
}

class SettingState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new FlatButton(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
              new Icon(
                Icons.person,
              ),
              new Text(
                'Sign In',
                textScaleFactor: 1.5,

              )
            ],
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
        )
      ],
    );
  }
}