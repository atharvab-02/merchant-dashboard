import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/screens/payment_options.dart';

class AmountWithTimer extends StatelessWidget {
  const AmountWithTimer({
    super.key,
  });

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
        // height: 143,
        margin: EdgeInsets.only(top: 20, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Pay the mentioned amount to the info below",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Text("Timer"),
                  CircularCountDownTimer(
                    isReverse: true,
                    width: 60,
                    height: 60,
                    duration: 120,
                    fillColor: Colors.blue,
                    fillGradient: const LinearGradient(
                      colors: [Color(0xFFA8C0F0), Color(0xFF3267CF)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    strokeWidth: 7,
                    ringColor: const Color(0xFFEFF6FC),
                    strokeCap: StrokeCap.round,
                    isTimerTextShown: true,
                    isReverseAnimation: true,
                    textFormat: CountdownTextFormat.MM_SS,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Color(0xFF070417),
                    ),
                    onComplete: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const PaymentOptions()),
                      // );
                    },
                  ),
                  // SizedBox(width: 30),
                  Container(
                    child: Column(children: [
                      Text(
                        "Amount",
                        style: TextStyle(
                            color: grey7373,
                            fontSize: 11,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "0.43 BCH",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Rs 4,300",
                        style: TextStyle(
                            color: lightgrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ]),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
