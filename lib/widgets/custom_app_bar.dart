import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleTxt;
  const CustomeAppBar({Key? key, required this.titleTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(titleTxt),
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
