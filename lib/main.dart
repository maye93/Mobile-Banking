import 'package:flutter/material.dart';
import 'package:practice/authentication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authentication_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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

            ///////////////////////// CARD /////////////////////////
              Material(
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
            ]
          )
        )
      )
    );
  }
}