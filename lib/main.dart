import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'MyHome.dart';
import 'projects.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'about',
    routes: {'about': (context) => Myhome()},
  ));
}
