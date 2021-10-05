import 'package:flutter/material.dart';
import 'package:practice/dashboard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/transfer.dart';
import 'package:practice/authentication.dart';
import 'package:practice/login_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    DashBoard(),
    TransferMoneyScreen(),
    DashBoard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff231D25),
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
          }),
    );
  }
}
