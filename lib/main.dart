import 'package:flutter/material.dart';
import 'package:rute_and_navigation/pages/home_page.dart';
import 'package:rute_and_navigation/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
