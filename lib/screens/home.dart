import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/widgets/Home/account_detials.dart';
import 'package:merchant_dashboard/widgets/Home/billing_amount.dart';
import 'package:merchant_dashboard/widgets/Home/create_new_payment.dart';
import 'package:merchant_dashboard/widgets/Home/recent_payments.dart';
import 'package:merchant_dashboard/widgets/Home/total_earnings.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBg,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Totalearnings(),
            CreateNewPayment(),
            RecentPayments(),
            BillingAmount(),
            AccountDetails()
          ]),
          // width: ,
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // toolbarHeight: 60,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      centerTitle: true,
      elevation: 0,
      title: Container(
          // padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
        'Merchant Dashboard',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      )),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF737373),
        ),
        onPressed: () {},
        padding: EdgeInsets.only(left: 10),
      ),
      // elevation: 5,
      // shadowColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.7),
        child: Container(
          // color: Colors.orange,
          color: const Color(0xFFD6D6D6),
          height: 0.7,
        ),
      ),
    );
  }
}
