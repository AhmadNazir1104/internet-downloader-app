import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MonitorScreenSetting extends StatefulWidget {
  const MonitorScreenSetting({super.key});

  @override
  State<MonitorScreenSetting> createState() => _MonitorScreenSettingState();
}

class _MonitorScreenSettingState extends State<MonitorScreenSetting> {
  @override
  Widget build(BuildContext context) {
    bool isSwitchOn = false;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Setup Ping Monitor",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Active",
                    style: TextStyle(fontSize: 15),
                  ),
                  FlutterSwitch(
                    height: 30,
                    width: 60,
                    toggleSize: 20,
                    value: isSwitchOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(fontSize: 15),
                  ),
                  FlutterSwitch(
                    height: 30,
                    width: 60,
                    toggleSize: 20,
                    value: isSwitchOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Specfic Connection",
                    style: TextStyle(fontSize: 15),
                  ),
                  FlutterSwitch(
                    height: 30,
                    width: 60,
                    toggleSize: 20,
                    value: isSwitchOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Connection",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "WiFi",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SSID",
                    style: TextStyle(fontSize: 15),
                  ),
                  FlutterSwitch(
                    height: 30,
                    width: 60,
                    toggleSize: 20,
                    value: isSwitchOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exact Timing",
                    style: TextStyle(fontSize: 15),
                  ),
                  FlutterSwitch(
                    height: 30,
                    width: 60,
                    toggleSize: 20,
                    value: isSwitchOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Repeat",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "15 mint",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.delete,
                    size: 40,
                    color: Colors.red,
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "SAVE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
