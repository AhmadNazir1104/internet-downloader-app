import 'package:flutter/material.dart';
import 'package:internet_speed/utility/app_strings.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleTxt;
  const CustomeAppBar({Key? key, required this.titleTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(titleTxt),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              appColors().primaryColor,
              appColors().secondaryColor
            ])),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
