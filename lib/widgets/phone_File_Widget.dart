import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_speed/utility/app_colors.dart';
import 'package:internet_speed/utility/app_strings.dart';
import 'package:internet_speed/widgets/custom_text_widget.dart';

// ignore: must_be_immutable
class PhoneFileWidget extends StatelessWidget {
  String valueof;
  String initialVal;
  PhoneFileWidget({
    super.key,
    required this.valueof,
    required this.initialVal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45.h,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        gradient: AppColors.Lineargradiebnt,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 1,
            blurStyle: BlurStyle.outer,
            color: appColors().primaryColor,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text(
            text: '$initialVal   :  ',
            size: 12.sp,
            color: AppColors.textGreyColor,
          ),
          text(
            text: valueof,
            size: 12.sp,
            color: AppColors.textWhiteColor,
          ),
        ],
      ),
    );
  }
}
