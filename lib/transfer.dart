import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
int balance = 100000;
var f = NumberFormat('#,###,###');

class TransferMoneyScreen extends StatelessWidget {
  const TransferMoneyScreen({Key? key}) : super(key: key);

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
                  )
                )
              ),

              ////////////////////// WHITE BOX ///////////////////////
              Positioned(
                top: 170,
                child: Container(
                  height: 700, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F1ED),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )
                  )
                )
              ),

              ///////////////////////// CARD /////////////////////////
              Positioned(
                top: 120,
                child: Material(
                  elevation: 1000,
                  color: Colors.transparent,
                  child: Container(
                    height: 300, width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/smallcard.png'),
                        fit: BoxFit.scaleDown,
                      )
                    )
                  )
                )
              ),

              /////////////////////// BALANCE ////////////////////////
              Positioned( 
                top: 270, left: 55,
                child: Text("PHP "+f.format(balance).toString(),
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Glacial',
                  color: const Color(0xFFE58B8E),
                  fontSize: 50,
                  )
                )
              ),

              //////////////////// TRANSFER AMOUNT ////////////////////
              Positioned( 
                top: 350,
                child: Text("Transfer Amount",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Glacial Bold',
                    color: const Color(0xFFFE971A),
                    fontSize: 30,
                  )         
                )
              ),
              
              /////////////////////////// PHP //////////////////////////
              Positioned( 
                top: 400, left: 30,
                child: Text("PHP",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Glacial Bold',
                    color: const Color(0xFFE58B8E),
                    fontSize: 25,
                  )
                )
              ),
              
              /////////////////////// PHP TEXTFIELD ////////////////////
              Positioned( 
                top: 390, left: 80,
                child: Container(
                  height: 100, width: 280,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Minimum amount must be Php 200',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true),
                  ),
                )
              ),

              /////////////////////// TRANSFER TO //////////////////////
              Positioned( 
                top: 450,
                child: Text("Transfer To",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Glacial Bold',
                    color: const Color(0xFFFE971A),
                    fontSize: 30,
                  )         
                )
              ),

              ////////////////// TRANSFER TO TEXTFIELD //////////////////
              Positioned( 
                top: 490,
                child: Container(
                  height: 100, width: 300,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(12),
                      FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the Account Number',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true),
                  ),
                )
              ),

              ////////////////////////// NOTE ///////////////////////////
              Positioned( 
                top: 550,
                child: Text("Note",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Glacial Bold',
                    color: const Color(0xFFFE971A),
                    fontSize: 30,
                  )
                )
              ),

              ////////////////////// NOTE TEXTFIELD /////////////////////
              Positioned( 
                top: 590,
                child: SizedBox(
                  height: 300, width: 300,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'What would you like to say',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 40),
                    ),    
                  )
                )
              ),

              ////////////////////// CONFIRM BUTTON /////////////////////
              Positioned( 
                top: 710,
                child: SizedBox(
                  height: 50, width: 250,
                  child: ElevatedButton(
                    child: Text('Confirm'),
                    onPressed: () {
                      print('confirm');
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFE58B8E))),
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