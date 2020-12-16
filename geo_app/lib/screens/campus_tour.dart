import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class CampusTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Campus Tour')),
        body: makingList(),
      ),
    );
  }
}

class makingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _hallNames(context);
  }
}

Widget _hallNames(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/beaumont.jpg'),
        ),
        title: Text('Beaumont',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return PicViewScreen1();
          }));
        },
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/ausable.jpg'),
        ),
        title: Text('Ausable',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/memorial.jpg'),
        ),
        title: Text('Memorial',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/acc.jpg'),
        ),
        title: Text('Angel College Centre',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/hawkins.jpg'),
        ),
        title: Text('Hawkins',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
      ),
    ],
  );
}

class PicViewScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
              tag: 'beaumount hall pic',
              child: PhotoView(
                imageProvider: AssetImage("images/hawkins.jpg"),
              )),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
