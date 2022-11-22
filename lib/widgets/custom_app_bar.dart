import 'package:flutter/material.dart';
import 'package:internet_speed/utility/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleTxt;
  const CustomeAppBar({Key? key, required this.titleTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(
        titleTxt,
        style: TextStyle(
          fontFamily: 'popinsmedium',
        ),
      ),
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
        bottomLeft: Radius.circular(10.r),
        bottomRight: Radius.circular(10.r),
      )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
