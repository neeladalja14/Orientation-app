import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(DocumentsFaqs());

class DocumentsFaqs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Documents Links')),
        body: linksList(),
      ),
    );
  }
}

class linksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _givenLinks(context);
  }
}

Widget _givenLinks(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/beaumont.jpg'),
        ),
        title: Text('DMV (Driver license)',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
        onTap: () {
          const url = 'https://dmv.ny.gov/';
          MyURL(url);
        },
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/ausable.jpg'),
        ),
        title: Text('contact GEO',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/memorial.jpg'),
        ),
        title: Text('Social Security Office',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/acc.jpg'),
        ),
        title: Text('University Police',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/hawkins.jpg'),
        ),
        title: Text('Print your i-94',
            style: TextStyle(
                fontFamily: "Monospace", fontWeight: FontWeight.bold)),
      ),
    ],
  );
}

MyURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Something Went Wrong, The Site Cannot Be Reached. :( $url';
  }
}
