import 'package:flutter/material.dart';
import 'package:practice/transaction_card.dart';
import 'package:practice/transaction_data.dart';
import 'package:intl/intl.dart';
import 'transaction_card.dart';
import 'transaction_data.dart';
import 'DatabaseAccounts.dart';

class PrivateAccount extends AdminAccount {
  account() {
    return super.account();
  }

  card() {
    return super.card();
  }

  expiry() {
    return super.expiry();
  }
}

var f = NumberFormat('###,###');

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                reverse: true,
                child: Stack(alignment: Alignment.center, children: [
                  ////////////////////// BACKGROUND //////////////////////
                  Container(
                    alignment: Alignment.center,
                    height: 825,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xFF231D25),
                  ),

                  ////////////////////// WELCOME BACK ////////////////////
                  Positioned(
                      top: 130,
                      left: 50,
                      child: Text("Welcome Back,",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Glacial',
                            color: const Color(0xFFFE971A),
                            fontSize: 20,
                          ))),

                  //////////////////////// USERNAME //////////////////////
                  Positioned(
                      top: 155,
                      left: 50,
                      child: Text(PrivateAccount().account(),
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Glacial',
                            color: const Color(0xFFFE971A),
                            fontSize: 20,
                          ))),

                  ///////////////////////// LOGO /////////////////////////
                  Positioned(
                      top: 120,
                      right: 50,
                      child: Material(
                          elevation: 1000,
                          color: Colors.transparent,
                          child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image:
                                    AssetImage('assets/bank_logo_NoName.png'),
                                fit: BoxFit.scaleDown,
                              ))))),

                  ////////////////////// WHITE BOX ///////////////////////
                  Positioned(
                      top: 195,
                      child: Container(
                          height: 700,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF3F1ED),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              )))),

                  ///////////////////////// CARD /////////////////////////
                  Positioned(
                      top: 145,
                      child: Material(
                          elevation: 1000,
                          color: Colors.transparent,
                          child: Container(
                              height: 350,
                              width: 350,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('assets/card.png'),
                                fit: BoxFit.scaleDown,
                              ))))),

                  ////////////////////// CARD NUMBER ///////////////////////
                  Positioned(
                      top: 340,
                      left: 40,
                      child: Text(PrivateAccount().card(),
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Glacial',
                            color: const Color(0xFFE58B8E),
                            fontSize: 25,
                            letterSpacing: 3,
                          ))),

                  ////////////////////// CARD EXPIRY ///////////////////////
                  Positioned(
                      top: 375,
                      left: 40,
                      child: Text(PrivateAccount().expiry(),
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Glacial',
                            color: const Color(0xFFE58B8E),
                            fontSize: 25,
                          ))),

                  //////////////////// RECENT TRANSACTIONS ///////////////////
                  Positioned(
                      top: 430,
                      child: Text("RECENT TRANSACTIONS",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Glacial Bold',
                            color: const Color(0xFF231D25),
                            fontSize: 20,
                            letterSpacing: 2,
                          ))),

                  ///////////////////////// LIST VIEW ////////////////////////
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 400, left: 7, right: 7),
                          child: ListView.separated(
                              itemCount: myTransactions.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 10,
                                );
                              },
                              itemBuilder: (context, index) {
                                return TransactionCard(
                                    transaction: myTransactions[index]);
                              })))
                ]))));
  }
}
