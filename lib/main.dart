import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/screens/first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.lightBlue,
      home: First(),
      theme: ThemeData(
        accentColor: Colors.purpleAccent,
        primaryColor: Colors.lightBlue,
      ),
    );
  }
}
