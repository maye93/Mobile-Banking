import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/homepage.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  EducationScreen createState() => EducationScreen();
}

class EducationScreen extends State<Education> {
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
                    image: AssetImage('assets/school.png'),
                  )))),

          ///////////////////////// BANNER ICON /////////////////////////
          Positioned(
              top: 80,
              child: IconButton(
                  icon: Icon(Icons.school, color: Colors.white),
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
                    "         Dante studied at the University of Bologna, one of the most famous universities in the medieval world. There, he came under the influence of one of the most famous scholars of the time, Ser Brunetto Latini, who never taught Dante but advised and encouraged him. Latini appears in Canto XV of the Inferno.",
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Text(" "),
                  Text(" "),
                  Text(
                    "         Around the time of Beatrice’s death, Dante began to immerse himself in the study of philosophy and the machinations of the Florentine political scene. Florence was then a tumultuous city, with factions representing the papacy and the empire continually at odds, and Dante held a number of important public posts. In 1302, however, he fell out of favor and was exiled for life by the leaders of the Black Guelphs, the political faction in power at the time and who were in league with Pope Boniface VIII. Dante may have been driven out of Florence, but this would be the beginning of his most productive artistic period.",
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
