import 'package:flutter/material.dart';
import 'package:merchant_dashboard/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.context,
    required this.routeToScreen,
  }) : super(key: key);

  final String title;
  final BuildContext context;
  final Widget routeToScreen;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      centerTitle: true,
      elevation: 0,
      title: Container(
        child: Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: grey7373,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => routeToScreen));
        },
        padding: EdgeInsets.only(left: 10),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.7),
        child: Container(
          color: const Color(0xFFD6D6D6),
          height: 0.7,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
