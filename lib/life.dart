import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/homepage.dart';

class Life extends StatefulWidget {
  const Life({Key? key}) : super(key: key);

  @override
  LifeScreen createState() => LifeScreen();
}

class LifeScreen extends State<Life> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          ////////////////////// BACKGROUND //////////////////////
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
          ),

          /////////////////////// BANNER ////////////////////
          Positioned(
              top: -250,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/person.png'),
                  )))),

          ///////////////////////// BANNER ICON /////////////////////////
          Positioned(
              top: 80,
              child: IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  })),

          ////////////////////// INFORMATION ////////////////////
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 220, left: 30, right: 30),
              child: Column(
                children: [
                  Text(
                    "         Dante was born in Florence in May 1265. His family was of an old lineage, of noble birth but no longer wealthy. His education was undoubtedly typical of all the youth of that time and station in life. Dante’s mother died only a few years after his birth, and when Dante was around 12 years old, it was arranged that he would marry Gemma Donati, the daughter of a family friend. Around 1285, the pair married, but Dante was in love with Beatrice Portinari.",
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Text(" "),
                  Text(" "),
                  Text(
                    "         He died in Ravenna on September 13, 1321, and he was buried with honors due him. Several times during the intervening years, the city of Florence has tried to get his remains returned to his native city, but not even the intercession of several popes could bring this about. His opinion of the citizens of his city was clearly stated in the full title of his greatest work, The Comedy of Dante Alighieri, Florentine by Citizenship, Not by Morals. Dante still lies in the monastery of the Franciscan friars in Ravenna.",
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                ],
              )
            )
          )
        ])
      ),
    );
  }
}
