import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/homepage.dart';

class Poems extends StatefulWidget {
  const Poems({Key? key}) : super(key: key);

  @override
  PoemsScreen createState() => PoemsScreen();
}

class PoemsScreen extends State<Poems> {
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
                    image: AssetImage('assets/article.png'),
                  )))),

          ///////////////////////// BANNER ICON /////////////////////////
          Positioned(
              top: 80,
              child: IconButton(
                  icon: Icon(Icons.article, color: Colors.white),
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
                    "         La Divina Commedia represents a 14th-century vision of the afterlife, the long narrative poem describes Dante's journey through the three realms of the dead: Inferno (hell), Purgatorio (purgatory), and Paradiso (heaven).",
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Text(" "),
                  Text(" "),
                  Text(
                    "         This unorthodox approach paved the way for Italian writers such as Boccaccio and Petrarch, while his depictions of Hell, Purgatory and Heaven had a profound influence on western art, from Sandro Botticelli to William Blake.",
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Text(" "),
                  Text(" "),
                  Text(
                    "         Dante’s Divine Comedy has flourished for more than 650 years and has been considered a major work since Giovanni Boccaccio wrote a biography of Dante in 1373. By 1400, at least 12 commentaries had already been written on the poem’s meaning and significance. Today, The Divine Comedy is widely considered the most important poem of the Middle Ages, and the pre-eminent work in Italian literature.",
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
