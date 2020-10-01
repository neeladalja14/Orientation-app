import 'package:flutter/material.dart';
import 'Dashboard.dart';
// import 'package:lit_firebase_auth_ui_demo/screens/auth/auth.dart';
import 'package:geo_app/screens/auth/auth.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home: Scaffold(body: AuthScreen()),
      );

      // theme: ThemeData(
      //   primaryColor: new Color(0xff622f74),
      // ),
      // home: Dashboard(),
  }
}
