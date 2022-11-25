import 'package:flutter/material.dart';

import 'package:internet_speed/widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_speed/widgets/result_widget.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(
                text: "NETWORK\n SIGNAL",
                size: 15.sp,
              ),
              text(text: "TEST\n DATE", size: 15.sp),
              text(text: "PING\n (ms)", size: 15.sp),
              text(text: "DOWNLOAD\n (mbps)", size: 15.sp),
              text(text: "UPLOAD\n (mbps)", size: 15.sp),
            ],
          ),
          Row(
            children: [
              Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ReslutWidget();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
