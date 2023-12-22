import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 40),
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
      padding: EdgeInsets.only(left: 25, top: 18, bottom: 18, right: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(children: [
            SvgPicture.asset(
              'assets/images/setting.svg',
              semanticsLabel: 'Bill',
              height: 22,
              width: 22,
            ),
            SizedBox(width: 15),
            Text(
              "Account Detials",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            )
          ]),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFF737373),
        )
      ]),
    );
  }
}
