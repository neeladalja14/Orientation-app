import 'package:flutter/material.dart';
import 'package:geo_app/config/palette.dart';
import 'package:geo_app/screens/home.dart';
import 'package:geo_app/screens/splash.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: "Orientation App",
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.muliTextTheme(),
          accentColor: Palette.darkOrange,
          appBarTheme: const AppBarTheme(
            brightness: Brightness.dark,
            color: Palette.darkBlue,
          ),
        ),
        // home: LitAuthState(
        //     authenticated: HomeScreen(),
        //     unauthenticated: AuthScreen(),
        // ),
        home: SplashScreen(),

      ),
    );

      // theme: ThemeData(
      //   primaryColor: new Color(0xff622f74),
      // ),
      // home: Dashboard(),
  }
}
