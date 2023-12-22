import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';

class ToggleCurrency extends StatefulWidget {
  final ValueChanged<String> onCurrencyChanged;

  const ToggleCurrency({
    Key? key,
    required this.onCurrencyChanged,
  }) : super(key: key);

  @override
  State<ToggleCurrency> createState() => _ToggleCurrencyState();
}

class _ToggleCurrencyState extends State<ToggleCurrency> {
  String selectedCurrency = "Crypto";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedCurrency = "Crypto";
                  widget.onCurrencyChanged(selectedCurrency);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).copyWith(
                    topRight: const Radius.circular(0),
                    bottomRight: const Radius.circular(0),
                  ),
                  color: selectedCurrency == "Crypto" ? primary : greyf2f2,
                ),
                child: Center(
                  child: Text(
                    "Crypto",
                    style: TextStyle(
                      color:
                          selectedCurrency == "Crypto" ? white : Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedCurrency = "Fiat";
                  widget.onCurrencyChanged(selectedCurrency);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).copyWith(
                    topLeft: const Radius.circular(0),
                    bottomLeft: const Radius.circular(0),
                  ),
                  color: selectedCurrency == "Fiat" ? primary : greyf2f2,
                ),
                child: Center(
                  child: Text(
                    "Fiat",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: selectedCurrency == "Fiat" ? white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
