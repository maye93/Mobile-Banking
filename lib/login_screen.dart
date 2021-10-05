import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:practice/base_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final username = TextEditingController();
  final password = TextEditingController();
  final loginError =
      SnackBar(content: Text('Error: username and password does not match.'));

  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height + 110,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    child: Material(
                        color: Color(0xff231D25),
                        child: Container(
                          // height: double.infinity,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/cash.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.5),
                                      BlendMode.dstATop))),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 1000,
                          ),
                        ))),
                // if (!isKeyboard)
                Container(
                  child: BankLogo(),
                  // height: MediaQuery.of(context).size.height,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 100),
                ),

                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    child: TextField(
                        controller: username,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                // borderSide: BorderSide.none
                                borderRadius: BorderRadius.circular(40)),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Username",
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            hintStyle: TextStyle(color: Colors.grey))),
                  ),
                  padding: EdgeInsets.only(top: 10),
                ),
                Container(
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    child: SizedBox(
                      child: TextField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              icon: Icon(
                                Icons.security,
                                color: Colors.white,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Colors.white,
                              filled: true)),
                    ),
                    padding: EdgeInsets.only(top: 150)),

                // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
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
                Container(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (username.text == "admin" &&
                            password.text == "admin") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BaseScreen()));
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(loginError);
                        }
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15)),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange)),
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 270),
                ),
              ],
            ),
          ),
        )));
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
