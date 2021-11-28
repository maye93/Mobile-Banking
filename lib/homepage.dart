import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/education.dart';
import 'package:practice/poems.dart';
import 'life.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageScreen createState() => HomePageScreen();
}

class HomePageScreen extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          ////////////////////// BACKGROUND //////////////////////
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/homepage.png'),
              ),
            ),
          ),

          ////////////////////// SHORT DESCRIPTION ////////////////////
          Positioned(
            top: 50,
            left: 30,
            child: Text(
              "Father of the Italian Language",
              style: GoogleFonts.montserrat(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            )
          ),

          ////////////////////// POET NAME ////////////////////
          Positioned(
            top: 70,
            left: 30,
            child: Text("DANTE",
              style: GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 50),
            )
          ),
          Positioned(
            top: 115,
            left: 30,
            child: Text("ALIGHIERI",
              style:GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 50),
            )
          ),

          ///////////////////////// BOTTOM ICONS /////////////////////////
          Positioned(
            bottom: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Life()));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.school, color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Education()));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.article, color: Colors.white),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Poems()));
                  },
                )
              ]
            )
          )
        ])
      )
    );
  }
}
