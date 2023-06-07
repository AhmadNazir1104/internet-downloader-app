import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utility/app_colors.dart';
import 'custom_text_widget.dart';

class SeetingListTileWidget extends StatelessWidget {
  final VoidCallback onTapCallback;
  final Icon icon;
  final String subtitle;
  const SeetingListTileWidget({
    Key? key,
    required this.onTapCallback,
    required this.icon,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 380.w,
      height: 2,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.textWhiteColor,
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(
            text: subtitle,
            size: 15.sp,
            color: AppColors.textWhiteColor,
            fontFamily: 'Josefine Sans',
          ),
          icon,
        ],
      ),
    );
  }
}
