import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';

class CreateNewPayment extends StatelessWidget {
  const CreateNewPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x00000008),
            offset: Offset(5, 7),
            blurRadius: 13,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Create New Payment",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
          ),
          Icon(
            Icons.arrow_forward_sharp,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
