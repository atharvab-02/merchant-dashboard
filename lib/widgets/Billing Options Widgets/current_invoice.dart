import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/screens/payment_options.dart';

class CurrentInvoice extends StatelessWidget {
  final currentInvoice;
  final paid;
  const CurrentInvoice(
      {super.key, required this.currentInvoice, required this.paid});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(color: currentInvoice ? white : Colors.black),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.none,
                width: 1.0,
              ),
              color: currentInvoice ? primary : white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                !paid
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Estimated Due",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "\$63.32",
                                      style: TextStyle(
                                          color: !currentInvoice && !paid
                                              ? primary
                                              : white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 190,
                                      child: Text(
                                        "Estimated amount you owe based on your current month-to-date usage",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ]),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PaymentOptions()));
                              },
                              child: Text(
                                'Pay',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    currentInvoice ? lightBlue : primary,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 7),
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            )
                          ])
                    : Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$63.32",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            Text("Paid",
                                style: TextStyle(
                                    color: Color(0xFF28A650),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700))
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Transaction ID",
                                style: TextStyle(
                                    color: lightgrey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700)),
                            Text("Payment Method",
                                style: TextStyle(
                                    color: lightgrey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700))
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("TTCNI022000800594",
                                style: TextStyle(
                                    color: primary,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600)),
                            Text("GPay",
                                style: TextStyle(
                                    color: grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700))
                          ],
                        ),
                        SizedBox(height: 10),
                      ]),
                const Divider(
                  color: darkgrey,
                  height: 5,
                  thickness: 0.3,
                  indent: 0,
                  endIndent: 0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment Due",
                          style: TextStyle(
                              color: currentInvoice ? darkgrey : lightgrey,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "March 21,2023",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: currentInvoice ? white : Color(0xFF737373),
                          ),
                        )
                      ]),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
