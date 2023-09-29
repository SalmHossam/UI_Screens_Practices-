import 'package:flutter/material.dart';
import 'package:quiz/Screen1.dart';
import 'package:quiz/Screen2.dart';
import 'package:quiz/Screen3.dart';

import 'MyThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Screen1.routeName,
      routes: {
        Screen1.routeName:(context)=>Screen1(),
        Screen2.routeName:(context)=>Screen2(),
        Screen3.routeName:(context)=>Screen3(),
      },
      theme: MyThemeData.lightTheme
    );
  }}