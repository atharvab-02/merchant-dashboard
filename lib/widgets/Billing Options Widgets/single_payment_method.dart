import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchant_dashboard/screens/pay_with_bch.dart';

class SinglePaymentMethod extends StatelessWidget {
  final logo;
  final paymentMethod;
  final shortname;
  final logoType;
  const SinglePaymentMethod({
    super.key,
    required this.logo,
    required this.paymentMethod,
    this.shortname,
    required this.logoType,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PayWithBCH()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 15, bottom: 15),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(children: [
                      logoType == "png"
                          ? Container(
                              height: 30,
                              width: 25,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(logo),
                              ),
                            )
                          : SvgPicture.asset(
                              logo,
                              semanticsLabel: paymentMethod,
                              height: 30,
                              width: 30,
                            ),
                      SizedBox(width: 20),
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                paymentMethod,
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600),
                              ),
                              if (shortname != null) SizedBox(height: 5),
                              if (shortname != null)
                                Text(
                                  shortname,
                                  style: const TextStyle(
                                    color: grey7373,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                            ]),
                      )
                    ]),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF737373),
                    size: 20,
                  )
                ]),
          )
        ]),
      ),
    );
  }
}
