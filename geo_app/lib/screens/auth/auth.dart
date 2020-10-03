import 'package:animations/animations.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geo_app/screens/auth/register.dart';
import 'package:geo_app/screens/auth/sign_in.dart';
import 'package:geo_app/screens/background_ui.dart';
import 'package:geo_app/screens/home.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key key}): super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
    builder: (context) => const AuthScreen(),
  );

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin{
  AnimationController _controller;

  ValueNotifier<bool> showSignInPage = ValueNotifier<bool>(true);
  
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
      body:LitAuth.custom(
        onAuthSuccess: (){
          Navigator.of(context).pushReplacement(HomeScreen.route);
        },
        child: Stack(
          children: [
            SizedBox.expand(
              child: CustomPaint(
                painter: BackgroundUi(
                  animation: _controller.view,
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800),
                child: ValueListenableBuilder<bool>(
                  valueListenable: showSignInPage,
                  builder: (context, value, child){
                    return PageTransitionSwitcher(
                      reverse: !value,
                      duration: Duration(milliseconds: 800),
                      transitionBuilder:
                      (child, animation, secondaryAnimation) {
                        return SharedAxisTransition(
                          animation: animation,
                          secondaryAnimation: secondaryAnimation,
                          transitionType: SharedAxisTransitionType.vertical,
                        fillColor: Colors.transparent,
                        child: child,
                        );
                      },
                      child:value ? SignIn(
                        key: ValueKey('Sign In'),
                        onRegisterClicked: () {
                          context.resetSignInForm();
                          showSignInPage.value = false;
                          _controller.forward();
                        },
                      ) : Register(
                        key: ValueKey('Register'),
                        onSignInPressed: () {
                          context.resetSignInForm();
                          showSignInPage.value = true;
                          _controller.reverse();
                        },
                      )
                    );
                  },
                ),
              ),
            ),


          ],
        ),
      )
    );
  }
}
