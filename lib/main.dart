import 'package:flutter/material.dart';
import 'package:groceries_flutter_ui/data.dart';
import 'package:groceries_flutter_ui/introScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: scaffoldColor,
      ),
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
