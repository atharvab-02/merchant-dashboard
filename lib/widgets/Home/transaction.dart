import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';

class Transaction extends StatelessWidget {
  const Transaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "13:44",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
        ),
        Container(
          width: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "20230215-001",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Text(
                "bitcoincash:qrd9khmeg4nqag3h5gzu8vjt537pm7le85lcauzezc",
                style: TextStyle(
                    fontSize: 10, fontWeight: FontWeight.w600, color: grey),
              ),
            ],
          ),
        ),
        Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              "\$ 32",
              style: TextStyle(
                  fontSize: 12, color: green, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5),
            Text(
              "0.25 BCH",
              style: TextStyle(
                  fontSize: 10, color: green, fontWeight: FontWeight.w700),
            )
          ]),
        )
      ]),
    );
  }
}
