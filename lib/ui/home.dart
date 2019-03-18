import 'package:flutter/material.dart';
import 'package:flutter_helloworld/ui/custom/custom_navigationbar.dart';
import 'package:flutter_helloworld/ui/tabs/find.dart';
import 'package:flutter_helloworld/ui/tabs/index.dart';
import 'package:flutter_helloworld/ui/tabs/setting.dart';

class HomePage extends StatefulWidget {
  final String title = 'Home';

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: new TabBarView(
          children: <Widget>[
            new IndexTab(),
            new FindTab(),
            new SettingTab()
          ],
          controller: controller,
        ),
      ),
      bottomNavigationBar: MyNavigationBar(controller: controller),
    );
  }
}