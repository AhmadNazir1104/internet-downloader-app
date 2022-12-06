import 'package:flutter/material.dart';
import 'package:internet_speed/models/wifi_Resut_Model.dart';
import 'package:internet_speed/provider/home_provider.dart';
import 'package:internet_speed/utility/app_colors.dart';

import 'package:internet_speed/widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_speed/widgets/result_widget.dart';
import 'package:provider/provider.dart';
import '../provider/wifi_provider.dart';
import 'package:intl/intl.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    context.watch<HomeProvider>().getTODOItem();
    HomeProvider homeProvider =
        Provider.of<HomeProvider>(context, listen: true);
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                    text: 'Date', size: 20.sp, color: AppColors.textBlackColor),
                text(
                    text: 'Download',
                    size: 20.sp,
                    color: AppColors.textBlackColor),
                text(
                    text: 'Upload',
                    size: 20.sp,
                    color: AppColors.textBlackColor),
              ],
            ),
            homeProvider.todoList.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: homeProvider.todoList == null
                        ? 0
                        : homeProvider.todoList.length,
                    itemBuilder: (context, i) {
                      WifiResultModel todoCat = homeProvider.todoList[i];

                      return homeProvider.todoList.isEmpty
                          ? SizedBox()
                          : InkWell(
                              onTap: () {
                                // AppRoutes.push(
                                //     context,
                                //     PageTransitionType.fade,
                                //     ViewMilestoneScreen(
                                //       title: 'Milestones',
                                //       wholeIndex: todoCat,
                                //       indexValue: i,
                                //     ));
                              },
                              child: resultWidget(
                                todoCat.dowoloadSpeed.toString(),
                                DateFormat('dd/MM/yyyy')
                                    .format(todoCat.testDate!),
                                todoCat.uploadSpeed.toString(),
                              ),

                              // Text(todoCat    .dowoloadSpeed.toString())
                            );
                    },
                  )
                : Center(
                    child: Text(
                      'No Data Found',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget resultWidget(
    String downloadSpeed,
    String testdate,
    String uploadData,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text(
          text: testdate,
          size: 12.sp,
          color: AppColors.textBlackColor,
        ),
        text(
          text: downloadSpeed,
          size: 12.sp,
          color: AppColors.textBlackColor,
        ),
        text(
          text: uploadData,
          size: 12.sp,
          color: AppColors.textBlackColor,
        ),
      ],
    );
  }
}
