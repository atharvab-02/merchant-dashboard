import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/widgets/Pay%20with%20BCH/slide_to_pay.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class WalletDropdown extends StatefulWidget {
  final ValueChanged<String> onWalletChanged;

  WalletDropdown({required this.onWalletChanged});

  @override
  _WalletDropdownState createState() => _WalletDropdownState();
}

class _WalletDropdownState extends State<WalletDropdown> {
  String selectedWallet = "External Wallet";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          style: BorderStyle.none,
          width: 1.0,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.only(top: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: greydede,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(8),
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    value: selectedWallet,
                    icon: Icon(Icons.keyboard_arrow_down_rounded,
                        color: grey7373),
                    iconSize: 20,
                    elevation: 16,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    underline: Container(
                      height: 0, // Set the underline height to 0
                      color: Colors.transparent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedWallet = newValue!;
                        widget.onWalletChanged(selectedWallet);
                      });
                    },
                    items: <String>['External Wallet', 'Personal Wallet']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: DefaultTextStyle(
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Nunito',
                            ),
                            child: Text(value),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          if (selectedWallet == 'External Wallet')
            Column(
              children: [
                Center(
                  child: PrettyQr(
                    image: AssetImage("assets/images/bch.png"),
                    typeNumber: 6,
                    size: MediaQuery.of(context).size.width - 150,
                    data: "abcd123",
                    errorCorrectLevel: QrErrorCorrectLevel.H,
                    elementColor: Colors.black,
                    roundEdges: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  padding:
                      EdgeInsets.only(top: 14, right: 18, bottom: 14, left: 24),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.none,
                      width: 1.0,
                    ),
                    color: greyf2f2,
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bitcoin Cash Address",
                              style: TextStyle(
                                color: lightgrey,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "bitcoincash:qwropjqw ... 25qb2q5",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primary,
                          minimumSize: Size(40, 39),
                          padding: EdgeInsets.all(7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Icon(
                          Icons.content_copy,
                          color: Colors.white,
                          size: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Balance",
                        style: TextStyle(
                          color: grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "2.467 BCH",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          // if (selectedWallet != 'External Wallet') SlideToPayButton()
          // Expanded(
          //   child: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: SlideToPayButton(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
