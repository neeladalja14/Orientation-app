import 'dart:js';

import "package:flutter/material.dart";
import 'package:geo_app/screens/background_ui.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key key}): super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  
  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(value: this, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundUi(
                animation: _controller.view,
              ),
            )
          )
        ],
      )
    );
  }
}
