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
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
            ),
          ),
          Center(
            child: RaisedButton(
                onPressed: () {
                  _controller.forward(from: 0);
                },
              child: Text('Animate'),
            ),
          ),
        ],
      )
    );
  }
}
