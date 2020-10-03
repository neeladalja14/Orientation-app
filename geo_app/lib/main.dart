import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'Dashboard.dart';
// import 'package:lit_firebase_auth_ui_demo/screens/auth/auth.dart';
import 'package:geo_app/screens/auth/auth.dart';
import 'package:firebase_core/firebase_core.dart';

// void main() => runApp(MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        home: AuthScreen(),
      ),
    );

      // theme: ThemeData(
      //   primaryColor: new Color(0xff622f74),
      // ),
      // home: Dashboard(),
  }
}
