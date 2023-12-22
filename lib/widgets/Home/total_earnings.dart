import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';

class Totalearnings extends StatelessWidget {
  const Totalearnings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          style: BorderStyle.none,
          width: 1.0,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x00000008),
            offset: Offset(5, 7),
            blurRadius: 13,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 20),
      height: 143,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Total Earnings",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          Text(
            "\$ 12,368",
            style: TextStyle(
                fontSize: 25, color: primary, fontWeight: FontWeight.w700),
          ),
          Text(
            "+ 5.7%",
            style: TextStyle(
                color: green, fontSize: 13, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
