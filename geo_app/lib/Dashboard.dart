import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:geo_app/screens/auth/auth.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Material MyItems(IconButton icon, String heading, int color, onTap) {
    return Material(
      color: Colors.white70,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: new Color(color),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  // Icon Formatting starts here
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      // child: Icon(Icons.color: Colors.black,
                      //   size: 30.0,
                      // ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          "Signed In",
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          MyItems(
              new IconButton(
                  icon: new Icon(Icons.ondemand_video), onPressed: () {}),
              "Campus Tour",
              0xffed622b,
              () {}),
          MyItems(
              new IconButton(
                  icon: new Icon(Icons.calendar_today), onPressed: null),
              "Events",
              0xff26cb3c,
              () {}),
          MyItems(
              new IconButton(
                  icon: new Icon(Icons.map_outlined), onPressed: null),
              "Campus Map",
              0xffff3266,
              () {}),
          MyItems(new IconButton(icon: new Icon(Icons.chat), onPressed: null),
              "Chat", 0xff3399fe, () {}),
          MyItems(
              new IconButton(
                  icon: new Icon(Icons.file_copy_sharp), onPressed: null),
              "Documents FAQS",
              0xff622f74,
              () {}),
          MyItems(
              new IconButton(
                  icon: new Icon(Icons.schedule_rounded), onPressed: null),
              "Book Appoinment",
              0xff7297ff,
              () {}),
          MyItems(
              new IconButton(
                  icon: new Icon(Icons.access_alarm_sharp),
                  onPressed: () {
                    context.signOut();
                    Navigator.of(context).push(AuthScreen.route);
                  }),
              "signout",
              0xffff3266,
              () {}),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(2, 240.0),
          StaggeredTile.extent(2, 130.0),
        ],
      ),
    );
  }
}
