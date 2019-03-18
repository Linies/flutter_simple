import 'package:flutter/material.dart';
import 'package:flutter_helloworld/ui/home.dart';
import 'package:flutter_helloworld/ui/login.dart';

class Router {
  final Map<String, WidgetBuilder> pages = <String, WidgetBuilder> {
    'home': (BuildContext context) => new HomePage(),
    'login': (BuildContext context) => new LoginPage(),
  };
}