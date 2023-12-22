import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchant_dashboard/screens/billing_details.dart';

class BillingAmount extends StatelessWidget {
  const BillingAmount({
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
        color: white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x00000008),
            offset: Offset(5, 7),
            blurRadius: 13,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: SvgPicture.asset(
                      'assets/images/bill.svg',
                      semanticsLabel: 'Bill',
                      height: 22,
                      width: 22,
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Billing Amount",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "\$17.5",
                          style: TextStyle(
                              color: primary,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Estimated amount you owe based on your current month-to-date usage",
                          style: TextStyle(
                              fontSize: 10,
                              color: lightgrey,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ])),
            SizedBox(width: 10),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BillingOptions()));
              },
              child: Text(
                'Pay Now',
                style: TextStyle(
                    color: white, fontSize: 11, fontWeight: FontWeight.w700),
              ),
              style: TextButton.styleFrom(
                backgroundColor: primary,
                padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            )
          ]),
    );
  }
}
