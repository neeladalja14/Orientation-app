import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDashboard extends StatelessWidget {
  Items item1 = new Items(
    title: "Calendar",
    subtitles: "March, Wednesday",
    event: "3 Events",
    img: "assets/calendar.png",
  );

  Items item2 = new Items(
    title: "virtual Orientation",
    subtitles: "Virtual Tour",
    event: "3 Events",
    img: "assets/tour.png",
  );

  Items item3 = new Items(
    title: "Make Appoinment",
    subtitles: "Skip The Line",
    event: "3 Events",
    img: "assets/appoinment.png",
  );

  Items item4 = new Items(
    title: "Campus-Map",
    subtitles: "Need Directions?",
    event: "",
    img: "assets/maps.png",
  );

  Items item5 = new Items(
    title: "My-Documents",
    subtitles: "FAQs",
    event: "",
    img: "assets/document.png",
  );

  Items item6 = new Items(
    title: "Chat",
    subtitles: "March, Wednesday",
    event: "3 Events",
    img: "assets/chat.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitles,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitles;
  String event;
  String img;
  Items({this.title, this.subtitles, this.event, this.img});
}
