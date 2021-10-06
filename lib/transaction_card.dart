import 'package:flutter/material.dart';
import 'package:practice/transaction_data.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFE58B8E),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE58B8E))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.header,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Glacial Bold',
                      color: const Color(0xFFF3F1ED),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    transaction.mssg,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Glacial',
                      color: const Color(0xFF231D25),
                      fontSize: 15,
                    )
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.date,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Glacial Bold',
                      color: const Color(0xFF231D25),
                      fontSize: 20,
                    )
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
