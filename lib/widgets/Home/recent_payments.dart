import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/widgets/Home/transaction.dart';

class RecentPayments extends StatelessWidget {
  const RecentPayments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      // height: 100,
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
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 25, right: 25, top: 18),
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Payments",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 11,
                          color: primary,
                          fontWeight: FontWeight.w700),
                    )
                  ]),
            ),
          ),
          Transaction(),
          const Divider(
            color: Color(0xFFF7F7F7),
            height: 5,
            thickness: 1,
            indent: 25,
            endIndent: 25,
          ),
          Transaction(),
          const Divider(
            color: Color(0xFFF7F7F7),
            height: 5,
            thickness: 1,
            indent: 25,
            endIndent: 25,
          ),
          Transaction(),
          const Divider(
            color: Color(0xFFF7F7F7),
            height: 5,
            thickness: 1,
            indent: 25,
            endIndent: 25,
          ),
          Transaction(),
        ],
      ),
    );
  }
}
