import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries_flutter_ui/data.dart';
import 'package:groceries_flutter_ui/introScreen.dart';

void main() {
  runApp(MyApp());
  
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: scaffoldColor,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
