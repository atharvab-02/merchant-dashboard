import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/screens/home.dart';
import 'package:merchant_dashboard/widgets/Billing%20Options%20Widgets/current_invoice.dart';
import 'package:merchant_dashboard/widgets/Common/custom_app_bar.dart';

class BillingOptions extends StatelessWidget {
  const BillingOptions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBg,
      appBar: CustomAppBar(
        title: 'Billing Details',
        context: context,
        routeToScreen: Home(), // Correct the screen to route to
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // padding: EdgeInsets.symmetric(()),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Current Invoice",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            CurrentInvoice(
              currentInvoice: true,
              paid: false,
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                "Past Invoices",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            CurrentInvoice(
              currentInvoice: false,
              paid: false,
            ),
            CurrentInvoice(
              currentInvoice: false,
              paid: true,
            ),
            CurrentInvoice(
              currentInvoice: false,
              paid: false,
            ),
          ]),
          // width: ,
        ),
      ),
    );
  }
}
