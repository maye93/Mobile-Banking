import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  return Scaffold(
    body: Center(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        reverse: true,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ////////////////////// BACKGROUND //////////////////////
            Container(
              height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
              color: const Color(0xFFE58B8E),
            ),
            
            ////////////////////////// 404 /////////////////////////
              Positioned( 
                top: 230,
                child: Text("Oh No!",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Glacial',
                  color: const Color(0xFF231D25),
                  fontSize: 50,
                  letterSpacing: 2,
                  )
                )
              ),

            ///////////////////////// PICTURE ///////////////////////
              Positioned(
                top: 250, right: 10,
                child: Material(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    height: 400, width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/error.png'),
                        fit: BoxFit.scaleDown,
                      )
                    )
                  )
                )
              ),
            ]
          )
        )
      )
    );
  }
}