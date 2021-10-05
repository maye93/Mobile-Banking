import 'package:flutter/material.dart';
import 'package:practice/login_screen.dart';

class Authentication_screen extends StatelessWidget {
  Authentication_screen({Key? key}) : super(key: key);
  final signUpError =
      SnackBar(content: Text('Sign Up is not available at the moment'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 200),
            child: Column(children: [
              BankLogo(),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        child: Text('Login'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                          ;
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange))),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        child: Text('Sign Up'),
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(signUpError);
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange))),
                  ),
                ),
              )
            ])));
  }
}

class BankLogo extends Authentication_screen {
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
