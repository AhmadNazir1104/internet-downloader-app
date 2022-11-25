import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internet_speed/provider/home_provider.dart';
import 'package:internet_speed/provider/internet_connection_provider.dart';

import 'package:internet_speed/utility/app_strings.dart';
import 'package:provider/provider.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    InternetConnectionProvider internetConnectionProvider =
        Provider.of<InternetConnectionProvider>(context, listen: true);
    HomeProvider homeProvider =
        Provider.of<HomeProvider>(context, listen: true);
    return Scaffold(
      body: internetConnectionProvider.internetConnection
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Download Speed',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Progress: ${homeProvider.downloadRate} %'),
                  Text(
                      'Download Rate: ${homeProvider.downloadRate} ${homeProvider.unitText}'),
                  if (homeProvider.downloadCompletionTime > 0)
                    const SizedBox(
                      height: 32.0,
                    ),
                  const Text(
                    'Upload Speed',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Progress: ${homeProvider.uploadProgress}%'),
                  Text(
                      'Upload Rate: ${homeProvider.uploadRate} ${homeProvider.unitText}'),
                  if (homeProvider.uploadCompletionTime > 0)
                    Text(
                        'Time taken: ${(homeProvider.uploadCompletionTime / 1000).toStringAsFixed(2)} sec(s)'),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(homeProvider.isServerSelectionInProgress
                        ? 'Selecting Server...'
                        : 'IP: ${homeProvider.ip ?? '--'} | ASP: ${homeProvider.asn ?? '--'} | ISP: ${homeProvider.isp ?? '--'}'),
                  ),
                  if (homeProvider.testInProgress) ...{
                    InkWell(
                      onTap: () {
                        homeProvider.startSpeedTest();
                      },
                      child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    appColors().primaryColor,
                                    appColors().secondaryColor
                                  ]),
                              shape: BoxShape.circle,
                              color: Colors.blue),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Column(
                              children: [
                                Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.powerOff,
                                  size: 60,
                                  color: Colors.white,
                                )),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "START",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )),
                    )
                  } else ...{
                    // const CircularProgressIndicator(),
                    _getLinearGauge(),
                  },
                ],
              ),
            )
          : Center(
              child: Text('Internet Available'),
              //
            ),
    );
  }

  Widget _getLinearGauge() {
    return Container(
      child: SfRadialGauge(axes: <RadialAxis>[
        RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
          GaugeRange(
            startValue: 0,
            endValue: 50,
            color: Colors.green,
            startWidth: 10,
            endWidth: 10,
          ),
          GaugeRange(
            startValue: 50,
            endValue: 100,
            color: Colors.orange,
            startWidth: 10,
            endWidth: 10,
          ),
          GaugeRange(
            startValue: 100,
            endValue: 150,
            color: Colors.red,
            startWidth: 10,
            endWidth: 10,
          )
        ], pointers: <GaugePointer>[
          NeedlePointer(
            // value: Provider.of<HomeProvider>(context, listen: true).asdf,
            value: 90,
          )
        ], annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Container(
              child: Text(
                '90',
                // Provider.of<HomeProvider>(context, listen: false).asdf,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            angle: 90,
            positionFactor: 0.5,
          )
        ])
      ]),
      // minimum: 0.0,
      // maximum: 100.0,
      // orientation: LinearGaugeOrientation.horizontal,
      // majorTickStyle: LinearTickStyle(length: 20),
      // axisLabelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
      // axisTrackStyle: LinearAxisTrackStyle(
      //     color: Colors.cyan,
      //     edgeStyle: LinearEdgeStyle.bothFlat,
      //     thickness: 15.0,
      //     borderColor: Colors.grey,),

      margin: EdgeInsets.all(10),
    );
  }
}
