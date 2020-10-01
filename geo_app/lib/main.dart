import 'package:flutter/material.dart';
import 'Dashboard.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: new Color(0xff622f74),
      ),
      home: Dashboard(),
    );
  }
}
