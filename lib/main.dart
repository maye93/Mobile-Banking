// git test hehe
// hello
import 'package:flutter/material.dart';
import 'package:practice/DashBoard.dart';
import 'package:practice/authentication.dart';
import 'package:practice/base_screen.dart';
import 'package:practice/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   canvasColor: const Color(0xff231D25),
      // ),
      home: BaseScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(top: 100, left: 25, right: 25),
          child: Column(
            children: [
              if (!isKeyboard) BankLogo(),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          // borderSide: BorderSide.none
                          borderRadius: BorderRadius.circular(40)),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey))),
              Padding(padding: EdgeInsets.all(2)),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true)),
              Padding(padding: EdgeInsets.symmetric(vertical: 6)),
              // Container(
              //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              //   width: double.infinity,
              //   child: GestureDetector(
              //     child: Text(
              //       'Forgot password?',
              //       textAlign: TextAlign.right,
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     onTap: () => print('forgot pasword was clicked'),
              //   ),
              // ),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    print('logging in...');
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                ),
              ),
            ],
          ),
        ));
  }
}

class BankLogo extends LoginScreen {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/bank_logo.png');
    Image image = Image(
      image: assetImage,
      width: 200,
      height: 300,
    );
    return Container(
      child: image,
    );
  }
}
