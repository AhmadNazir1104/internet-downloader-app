import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtnContainer extends StatelessWidget {
  final String title;
  final String titleValue;
  const CustomBtnContainer({
    required this.title,
    required this.titleValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 80.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r), color: Colors.blue),
      child: Column(children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          titleValue,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
