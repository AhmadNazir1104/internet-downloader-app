import 'package:flutter/material.dart';
import 'package:internet_speed/ads_services/ads_services.dart';
import 'package:internet_speed/utility/app_colors.dart';
import 'package:internet_speed/widgets/app_Routes.dart';
import 'package:internet_speed/widgets/custom_text_widget.dart';
import 'package:provider/provider.dart';

import '../models/wifi_Resut_Model.dart';
import '../provider/home_provider.dart';
import '../utility/app_Images.dart';

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
            homeProvider.deleteTODOItem(widget.indexnumber);
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
      ),
    );
  }
}
