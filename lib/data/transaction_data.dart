import 'package:flutter/material.dart';

class TransactionModel {
  String date;
  String mssg;
  String header;

  Color color;

  TransactionModel({
    required this.date,
    required this.mssg,
    required this.header,
    required this.color,
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(
    date: "09/21",
    mssg: "PHP 100,000 was added to your account.",
    header: "INVESTMENT",
    color: Colors.green.shade100,
  ),
  TransactionModel(
    date: "9/20",
    mssg: "PHP 5,000 was withdrawn from your account.",
    header: "ADMIN",
    color: Colors.orange.shade100,
  ),
  TransactionModel(
    date: "9/18",
    mssg: "JIG account successfully created",
    header: "ACCOUNT",
    color: Colors.red.shade100,
  ),
];
