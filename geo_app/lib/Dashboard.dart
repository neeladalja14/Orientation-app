import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:geo_app/screens/auth/auth.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Material MyItems(IconData icon, String heading, int color, onPressed){
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
                    child: Text(heading,
                    style: TextStyle(
                      color: new Color(color),
          fontSize: 20.0,
                    ),),
                  ),
                // Icon Formatting starts here
                Material(
                  color: new Color(color),
                  borderRadius: BorderRadius.circular(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:Icon(
                      icon,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),

              ],
            )
          ],
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Dashboard",
        style: TextStyle(
          color: Colors.redAccent,
        ),),

      ),
      body: StaggeredGridView.count(
          crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          MyItems(Icons.ondemand_video, "Campus Tour", 0xffed622b,(){}),
          MyItems(Icons.calendar_today, "Events", 0xff26cb3c,(){}),
          MyItems(Icons.map_outlined, "Campus Map", 0xffff3266,(){}),
          MyItems(Icons.chat, "Chat", 0xff3399fe,(){}),
          MyItems(Icons.file_copy_sharp, "Document FAQs", 0xff622f74,(){}),
          MyItems(Icons.schedule_rounded, "Book Appoinment", 0xff7297ff,(){}),
          MyItems(Icons.logout, "Sign Out", 0xffff3266, (){}),
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
