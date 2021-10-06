import 'package:flutter/material.dart';
import 'package:practice/dashboard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/transfer.dart';
import 'package:practice/error.dart';
// import 'package:practice/authentication.dart';
// import 'package:practice/login_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    ErrorScreen(),
    TransferMoneyScreen(),
    ErrorScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF231D25),
        
        selectedIconTheme: IconThemeData(
          color: const Color(0xFFFE971A)),
        selectedItemColor: const Color(0xFFFE971A),

        unselectedIconTheme: IconThemeData(
          color: Colors.grey),
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.piggyBank), label: "Deposit"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.handHoldingUsd), label: "Transfer"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.moneyBillWave), label: "Withdraw"),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        }
      )
    );
  }
}