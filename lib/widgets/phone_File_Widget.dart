import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_speed/utility/app_colors.dart';
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              text(
                text: '$initialVal   :  ',
                size: 15.sp,
                color: AppColors.textWhiteColor,
                boldText: FontWeight.w400,
                fontFamily: 'Josefin Sans',
              ),
              Expanded(child: Container()),
              text(
                text: valueof.length > 10
                    ? "${valueof.substring(0, 10)}..."
                    : valueof,
                size: 15.sp,
                color: AppColors.textWhiteColor,
                boldText: FontWeight.w400,
                fontFamily: 'Josefin Sans',
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 2.h,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 10.h),
          color: AppColors.textGreyColor,
        ),
      ],
    );
  }
}
