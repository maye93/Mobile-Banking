import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'DatabaseAccounts.dart';
import 'confirmation_screen.dart';

class PrivateAccount extends AdminAccount {
  balance() {
    return super.balance();
  }
}

var f = NumberFormat('###,###');

class Variables {
  static int moneyTransfer = 0;
  static int transferAccDetails = 0;
  static String transferNotes = "";

  money() {
    return moneyTransfer;
  }

  number() {
    var value = Variables.transferAccDetails
        .toString()
        .replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ");
    return value;
  }
}

class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({Key? key}) : super(key: key);

  @override
  TransferMoney createState() {
    return TransferMoney();
  }
}

class TransferMoney extends State<TransferMoneyScreen> {
  // var amount;
  final userTransferAmount = TextEditingController();
  final transferCardDetails = TextEditingController();
  final transferNote = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final InputError = SnackBar(content: Text('Invalid credentials'));
  final String currentBalance = PrivateAccount().balance().toString();

  currentMoney() {
    int money = int.parse(currentBalance);
    return money;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                reverse: true,
                child: Form(
                  key: _formkey,
                  child: Stack(alignment: Alignment.center, children: [
                    ////////////////////// BACKGROUND //////////////////////
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xFF231D25),
                    ),

                    ///////////////////////// TITLE /////////////////////////
                    Positioned(
                        top: 120,
                        child: Text("TRANSFER MONEY",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Glacial',
                              color: const Color(0xFFFE971A),
                              fontSize: 40,
                              letterSpacing: 2,
                            ))),

                    ////////////////////// WHITE BOX ///////////////////////
                    Positioned(
                        top: 170,
                        child: Container(
                            height: 700,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF3F1ED),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                )))),

                    /////////////////////// CARD ///////////////////////
                    Positioned(
                        top: 120,
                        child: Material(
                            elevation: 1000,
                            color: Colors.transparent,
                            child: Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/smallcard.png'),
                                  fit: BoxFit.scaleDown,
                                ))))),

                    /////////////////////// BALANCE ////////////////////////
                    Positioned(
                        top: 270,
                        left: 55,
                        child:
                            Text("PHP " + f.format(currentMoney()).toString(),
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Glacial',
                                  color: const Color(0xFFE58B8E),
                                  fontSize: 50,
                                ))),

                    //////////////////// TRANSFER AMOUNT ////////////////////
                    Positioned(
                        top: 350,
                        child: Text("Transfer Amount",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Glacial Bold',
                              color: const Color(0xFFFE971A),
                              fontSize: 25,
                            ))),

                    /////////////////////////// PHP //////////////////////////
                    Positioned(
                        top: 397,
                        left: 30,
                        child: Text("PHP",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Glacial Bold',
                              color: const Color(0xFFE58B8E),
                              fontSize: 25,
                            ))),

                    /////////////////////// PHP TEXTFIELD ////////////////////
                    Positioned(
                        top: 385,
                        left: 80,
                        child: Container(
                          height: 60,
                          width: 265,
                          child: TextFormField(
                            controller: userTransferAmount,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please specify transfer amount.';
                              } else if (int.tryParse(value)! < 200) {
                                return 'Amount must be more than Php 200.';
                              } else if (int.tryParse(value)! >
                                  currentMoney()) {
                                return 'Amount must be less than Php ' +
                                    f.format(currentMoney()).toString() +
                                    '.';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Minimum amount must be Php 200',
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        )),

                    /////////////////////// TRANSFER TO //////////////////////
                    Positioned(
                        top: 455,
                        child: Text("Transfer To",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Glacial Bold',
                              color: const Color(0xFFFE971A),
                              fontSize: 25,
                            ))),

                    ////////////////// TRANSFER TO TEXTFIELD //////////////////
                    Positioned(
                        top: 490,
                        child: Container(
                          height: 60,
                          width: 300,
                          child: TextFormField(
                            controller: transferCardDetails,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Must specify account number';
                              } else if (value.length < 12) {
                                return 'Invalid account number';
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              LengthLimitingTextInputFormatter(12),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter the Account Number',
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        )),

                    ////////////////////////// NOTE ///////////////////////////
                    Positioned(
                        top: 565,
                        child: Text("Note",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Glacial Bold',
                              color: const Color(0xFFFE971A),
                              fontSize: 25,
                            ))),

                    ////////////////////// NOTE TEXTFIELD /////////////////////
                    Positioned(
                        top: 600,
                        child: SizedBox(
                            height: 300,
                            width: 300,
                            child: TextFormField(
                              controller: transferNote,
                              textAlign: TextAlign.center,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(40)
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'What would you like to say?',
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 40),
                              ),
                            ))),

                    ////////////////////// CONFIRM BUTTON /////////////////////
                    Positioned(
                        top: 715,
                        child: SizedBox(
                            height: 50,
                            width: 250,
                            child: ElevatedButton(
                              child: Text('Confirm'),
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Variables.moneyTransfer =
                                      int.parse(userTransferAmount.text);
                                  Variables.transferAccDetails =
                                      int.parse(transferCardDetails.text);
                                  Variables.transferNotes = transferNote.text;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ConfirmScreen()));
                                } else {
                                  InputError;
                                }
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.all(15)),
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xFFE58B8E))),
                            ))),
                  ]),
                ))));
  }
}
