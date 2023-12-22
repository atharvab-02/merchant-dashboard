import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';
import 'package:merchant_dashboard/screens/billing_details.dart';
import 'package:merchant_dashboard/screens/payment_options.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
// import 'package:page_transition/page_transition.dart';
// import 'your_dashboard_screen_file.dart'; // Import your DashboardScreen file

class SlideToPayButton extends StatefulWidget {
  @override
  _SlideToPayButtonState createState() => _SlideToPayButtonState();
}

class _SlideToPayButtonState extends State<SlideToPayButton> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return SwipeableButtonView(
      buttonText: 'Slide to Pay',
      indicatorColor: AlwaysStoppedAnimation<Color>(primary),
      buttontextstyle: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
      buttonWidget: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.none,
            width: 1.0,
          ),
          color: primary,
          borderRadius: BorderRadius.circular(35.0),
        ),
        child: Icon(
          Icons.arrow_forward_rounded,
          color: white,
        ),
      ),
      activeColor: white,
      onWaitingProcess: () {
        // setState(() {
        //   isFinished = true;
        // });
        Future.delayed(Duration(seconds: 0), () {
          setState(() {
            isFinished = true;
          });
        });
      },
      isFinished: isFinished,
      onFinish: () async {
        // await Navigator.push(
        //   context,
        //   PageTransition(
        //     type: PageTransitionType.fade,
        //     child: DashboardScreen(),
        //   ),
        // );
        await Navigator.push(
            context, MaterialPageRoute(builder: (context) => PaymentOptions()));
        // TODO: For reverse ripple effect animation
        setState(() {
          isFinished = false;
        });
      },
    );
  }
}
