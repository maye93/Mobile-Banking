import 'package:flutter/material.dart';
import 'package:practice/data/card_data.dart';
// import 'package:practice/data/my_card.dart';
import 'package:practice/constants/app_textstyle.dart';
import 'package:practice/widgets/my_card.dart';
import 'package:practice/widgets/transaction_card.dart';
import 'package:practice/data/transaction_data.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff231D25),
        actions: [
          IconButton(
            icon: Image.asset('assets/pics/bank.png'),
            onPressed: () {},
          )
        ],
        title: Text(
          "Welcome back, Admin",
          style: TextStyle(
            fontFamily: "Poppins",
            color: Colors.amber[900],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: ListView.separated(
                    physics: ClampingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: myCards.length,
                    // shrinkWrap: true,
                    // scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyCard(
                        card: myCards[index],
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "BALANCE",
                style: ApptextStyle.BODY_TEXT,
              ),
              Row(
                children: [
                  Text(
                    "PHP 100,000",
                    style: TextStyle(fontSize: 50, color: Colors.amber[900]),
                  ),
                ],
              ),
              Text(
                "Recent Transactions",
                style: ApptextStyle.BODY_TEXT,
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                  itemCount: myTransactions.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return TransactionCard(transaction: myTransactions[index]);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
