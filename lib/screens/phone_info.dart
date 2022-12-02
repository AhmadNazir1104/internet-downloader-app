import 'package:flutter/material.dart';
import 'package:internet_speed/widgets/phone_File_Widget.dart';
import 'package:provider/provider.dart';
import 'package:internet_speed/provider/phone_provider.dart';
import 'package:internet_speed/widgets/custom_app_bar.dart';

class PhoneInfoScreen extends StatefulWidget {
  const PhoneInfoScreen({super.key});

  @override
  State<PhoneInfoScreen> createState() => _PhoneInfoScreenState();
}

class _PhoneInfoScreenState extends State<PhoneInfoScreen> {


  @override
  void initState() {
    super.initState();
    Provider.of<PhoneProvider>(context, listen: false).readAndroidBuildData();
  }


  @override
  Widget build(BuildContext context) {
    PhoneProvider phoneProvider =
        Provider.of<PhoneProvider>(context, listen: true);
    // phoneProvider.readAndroidBuildData();
    return Scaffold(
      appBar: CustomeAppBar(titleTxt: 'Device Info'),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PhoneFileWidget(
                valueof: phoneProvider.board.toString(),
                initialVal: 'Board of Device',
              ),
              PhoneFileWidget(
                valueof: phoneProvider.manufactures.toString(),
                initialVal: 'Manufactures',
              ),
              PhoneFileWidget(
                  valueof: phoneProvider.model.toString(),
                  initialVal: 'Device Model'),
              PhoneFileWidget(
                valueof: phoneProvider.display.toString(),
                initialVal: 'Display',
              ),
              PhoneFileWidget(
                valueof: phoneProvider.id.toString(),
                initialVal: "ID",
              ),
              PhoneFileWidget(
                  valueof: phoneProvider.hardware.toString(),
                  initialVal: "Hardware"),
              PhoneFileWidget(
                valueof: phoneProvider.host.toString(),
                initialVal: "Host",
              ),
              PhoneFileWidget(
                  valueof: phoneProvider.supported32BitAbis.toString(),
                  initialVal: 'Supported32BitAbis'),
              PhoneFileWidget(
                  valueof: phoneProvider.supported64BitAbis.toString(),
                  initialVal: 'Supported64BitAbis'),
              PhoneFileWidget(
                  valueof: phoneProvider.systemFeature.toString().length > 10
                      ? phoneProvider.systemFeature
                              .toString()
                              .substring(0, 30) +
                          ' ......'
                      : phoneProvider.systemFeature.toString(),
                  initialVal: 'SystemFeature'),
              PhoneFileWidget(
                  valueof: phoneProvider.displaySizeInches.toString(),
                  initialVal: 'Display Size in Inches'),
              PhoneFileWidget(
                  valueof: phoneProvider.displayWidthInches.toString(),
                  initialVal: 'Dispaly Width In Inches'),
              PhoneFileWidget(
                  valueof: phoneProvider.isPhysicalDevice.toString(),
                  initialVal: 'Is Physical Device'),
              PhoneFileWidget(
                  valueof: phoneProvider.displayXDpi.toString(),
                  initialVal: 'Display Xdpi'),
              PhoneFileWidget(
                  valueof: phoneProvider.displayYDpi.toString(),
                  initialVal: 'Display Ydpi')
            ],
          ),
        ),
      ),
    );
  }
}
