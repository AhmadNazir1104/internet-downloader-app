import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_speed/utility/app_colors.dart';
import 'package:internet_speed/widgets/app_Routes.dart';
import 'package:internet_speed/widgets/custom_text_widget.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../models/wifi_Resut_Model.dart';
import '../provider/home_provider.dart';
import '../utility/app_Images.dart';

// ignore: must_be_immutable
class SingleResultDetailScreen extends StatefulWidget {
  SingleResultDetailScreen({
    super.key,
    required this.singleIndex,
    required this.indexnumber,
  });
  WifiResultModel singleIndex;
  int indexnumber;
  @override
  State<SingleResultDetailScreen> createState() =>
      _SingleResultDetailScreenState();
}

class _SingleResultDetailScreenState extends State<SingleResultDetailScreen> {
  @override
  Widget build(BuildContext context) {
    context.watch<HomeProvider>().getTODOItem();
    HomeProvider homeProvider =
        Provider.of<HomeProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            AppRoutes.pop(context);
            // homeProvider.deleteTODOItem(widget.indexnumber);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.textWhiteColor,
          ),
        ),
        // title: text(
        //   text: 'Details',
        //   size: 24,
        //   color: AppColors.textWhiteColor,
        //   boldText: FontWeight.w600,
        // ),
        actions: [
          IconButton(
            onPressed: () {
              homeProvider.deleteTODOItem(widget.indexnumber);
            },
            icon: Icon(
              Icons.delete,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.backgroundImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: 'Ping',
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: 'Date',
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: 'Ip Address',
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: 'Download',
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: 'Upload',
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: widget.singleIndex.ping.toString(),
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: DateFormat('yyyy-MM-dd HH:mm')
                          .format(widget.singleIndex.testDate!),
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: widget.singleIndex.ipAddress.toString(),
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: widget.singleIndex.dowoloadSpeed.toString(),
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: text(
                      text: widget.singleIndex.uploadSpeed.toString(),
                      size: 14.sp,
                      color: AppColors.textWhiteColor,
                      boldText: FontWeight.w600,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
