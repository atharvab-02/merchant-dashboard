import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onTextChanged;

  const SearchField({
    Key? key,
    required this.controller,
    required this.onTextChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: greyf9f9, // Set background color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.search,
              color: Colors.grey,
              size: 14,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onTextChanged,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Search Payment Method',
                hintStyle: TextStyle(fontSize: 13),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              cursorColor: Colors.transparent, // Set cursor color
            ),
          ),
        ],
      ),
    );
  }
}
