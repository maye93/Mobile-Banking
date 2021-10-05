import 'package:flutter/material.dart';
import 'package:practice/constants/app_textstyle.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key, card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xff231D25),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/pics/jig.png'),
                  ),
                  Text("CARD NAME", style: ApptextStyle.MY_CARD_TITLE),
                  Text("Admin", style: ApptextStyle.MY_CARD_SUBTITLE)
                ],
              ),
              Text(
                "1234 5678 9000",
                style: ApptextStyle.MY_CARD_SUBTITLE,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("12/34", style: ApptextStyle.MY_CARD_SUBTITLE),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                child: Image.asset('assets/pics/mcard.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
