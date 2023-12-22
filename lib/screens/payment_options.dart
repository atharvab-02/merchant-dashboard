import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/screens/billing_details.dart';
import 'package:merchant_dashboard/widgets/Billing Options Widgets/search_feild.dart';
import 'package:merchant_dashboard/widgets/Billing Options Widgets/single_payment_method.dart';
import 'package:merchant_dashboard/widgets/Billing Options Widgets/toggle_currency.dart';
import 'package:merchant_dashboard/widgets/Common/custom_app_bar.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({Key? key}) : super(key: key);

  @override
  _PaymentOptionsState createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  String selectedCurrency = "Crypto"; // Default value
  TextEditingController searchController = TextEditingController();
  List<String> filteredCryptoPaymentMethods = [
    "Bitcoin Cash",
    "Smart Bitcoin Cash",
    "Ethereum",
    "Polygon",
    "Avalanche",
  ];

  List<String> filteredFiatPaymentMethods = [
    "Debit/Credit Card",
    "Bank Transfer",
    "UPI",
    "GPay",
    "Paytm",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBg,
      appBar: CustomAppBar(
        title: 'Payment Methods',
        context: context,
        routeToScreen: BillingOptions(), // Correct the screen to route to
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              style: BorderStyle.none,
              width: 1.0,
            ),
            color: white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ToggleCurrency(
                onCurrencyChanged: (currency) {
                  setState(() {
                    selectedCurrency = currency;
                  });
                },
              ),
              SearchField(
                controller: searchController,
                onTextChanged: (value) {
                  // Update the filtered lists based on the search input
                  if (selectedCurrency == "Crypto") {
                    filteredCryptoPaymentMethods = _filterPaymentMethods(
                        value, CryptoPaymentList.paymentMethods);
                  } else if (selectedCurrency == "Fiat") {
                    filteredFiatPaymentMethods = _filterPaymentMethods(
                        value, FiatPaymentList.paymentMethods);
                  }
                },
              ),
              SizedBox(height: 20),
              // Render different lists based on selectedCurrency
              if (selectedCurrency == "Crypto")
                CryptoPaymentList(
                  filteredPaymentMethods: filteredCryptoPaymentMethods,
                )
              else if (selectedCurrency == "Fiat")
                FiatPaymentList(
                  filteredPaymentMethods: filteredFiatPaymentMethods,
                )
              else
                Container(),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to filter payment methods based on search input
  List<String> _filterPaymentMethods(
      String query, List<String> paymentMethods) {
    return paymentMethods
        .where((method) => method.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}

class CryptoPaymentList extends StatelessWidget {
  final List<String> filteredPaymentMethods;

  const CryptoPaymentList({Key? key, required this.filteredPaymentMethods})
      : super(key: key);

  static const List<String> paymentMethods = [
    "Bitcoin Cash",
    "Smart Bitcoin Cash",
    "Ethereum",
    "Polygon",
    "Avalanche",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SinglePaymentMethod(
          logo: "assets/images/bitcoin.svg",
          paymentMethod: "Bitcoin Cash",
          shortname: "BCH",
          logoType: "svg",
        ),
        Divider(
          color: Color(0xFFF7F7F7),
          height: 5,
          thickness: 1,
          indent: 12,
          endIndent: 12,
        ),
        SinglePaymentMethod(
          logo: "assets/images/eth.svg",
          paymentMethod: "Ethereum",
          shortname: "ETH",
          logoType: "svg",
        ),
        Divider(
          color: Color(0xFFF7F7F7),
          height: 5,
          thickness: 1,
          indent: 12,
          endIndent: 12,
        ),
        // ... (similar entries for other payment methods)
      ],
    );
  }
}

class FiatPaymentList extends StatelessWidget {
  final List<String> filteredPaymentMethods;

  const FiatPaymentList({Key? key, required this.filteredPaymentMethods})
      : super(key: key);

  static const List<String> paymentMethods = [
    "Debit/Credit Card",
    "Bank Transfer",
    "UPI",
    "GPay",
    "Paytm",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SinglePaymentMethod(
          logo: "assets/images/credit_card.svg",
          paymentMethod: "Debit/Credit Card",
          logoType: "svg",
        ),
        Divider(
          color: Color(0xFFF7F7F7),
          height: 5,
          thickness: 1,
          indent: 12,
          endIndent: 12,
        ),
        SinglePaymentMethod(
          logo: "assets/images/bank.jpg",
          paymentMethod: "Debit/Credit Card",
          logoType: "png",
        ),
        Divider(
          color: Color(0xFFF7F7F7),
          height: 5,
          thickness: 1,
          indent: 12,
          endIndent: 12,
        ),
      ],
    );
  }
}
