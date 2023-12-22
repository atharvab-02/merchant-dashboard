import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/screens/payment_options.dart';
import 'package:merchant_dashboard/widgets/Pay%20with%20BCH/amount_with_timer.dart';
import 'package:merchant_dashboard/widgets/Pay%20with%20BCH/slide_to_pay.dart';
import 'package:merchant_dashboard/widgets/Pay%20with%20BCH/wallet_dropdown.dart';
import 'package:merchant_dashboard/widgets/Common/custom_app_bar.dart';

class PayWithBCH extends StatefulWidget {
  const PayWithBCH({Key? key}) : super(key: key);

  @override
  _PayWithBCHState createState() => _PayWithBCHState();
}

class _PayWithBCHState extends State<PayWithBCH> {
  String selectedWallet = "External Wallet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBg,
      appBar: CustomAppBar(
        title: 'Pay with BCH',
        context: context,
        routeToScreen: PaymentOptions(),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AmountWithTimer(),
            WalletDropdown(
              onWalletChanged: (String newWallet) {
                setState(() {
                  selectedWallet = newWallet;
                });
              },
            ),
            if (selectedWallet != "External Wallet")
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: SlideToPayButton()),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
