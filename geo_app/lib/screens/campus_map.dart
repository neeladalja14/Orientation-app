import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() => runApp(CampusMap());

class CampusMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {}),
              expandedHeight: 240.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 50,
              backgroundColor: Colors.red,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text('Campus Map',
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  background: Image.asset(
                    'images/sliverhawkins.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            SliverFillRemaining(
                child: Center(
              child: Hero(
                tag: 'Campus Map',
                child: PhotoView(
                    imageProvider: AssetImage("images/campusmap.png")),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
