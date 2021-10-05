import 'package:flutter/material.dart';

class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expDate,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "Admin",
    cardNumber: "123 456 789",
    expDate: "12/21",
    cardColor: Color(0xff231D25),
  ),
];
