import 'package:flutter/material.dart';
import 'package:practice/login_screen.dart';

class Authentication_screen extends StatelessWidget {
  Authentication_screen({Key? key}) : super(key: key);
  final signUpError = SnackBar(
    content: Text('Sign Up is not available at the moment')
  );

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
                color: const Color(0xFF231D25),
              ),

            ///////////////////////// LOGO /////////////////////////
              Positioned(
                top: 200,
                child: Material(
                  elevation: 1000,
                  color: Colors.transparent,
                  child: Container(
                    height: 300, width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bank_logo.png'),
                        fit: BoxFit.scaleDown,
                      )
                    )
                  )
                )
              ),

            ////////////////////// SIGN IN BUTTON ////////////////////
              Positioned( 
                top: 530,
                child: SizedBox(
                  height: 50, width: 150,
                  child: ElevatedButton(
                    child: Text('Sign In',
                      style: TextStyle(
                      fontFamily: 'Glacial',
                      )
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen()
                        )
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFE58B8E))
                    )
                  )
                )
              ),

            /////////////////////// SIGN UP BUTTON /////////////////////
              Positioned( 
                top: 590,
                child: SizedBox(
                  height: 50, width: 150,
                  child: ElevatedButton(
                    child: Text('Sign Up',
                      style: TextStyle(
                      fontFamily: 'Glacial',
                      )
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                        .showSnackBar(signUpError);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFE58B8E))
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