import 'package:flutter/material.dart';
import 'package:internet_speed/pages/history_page.dart';
import 'package:internet_speed/pages/monitor_page.dart';
import 'package:internet_speed/pages/settings_page.dart';
import 'package:internet_speed/pages/tool_page.dart';

import 'package:internet_speed/widgets/listitems.dart';

import '../pages/speed_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                ListItems(
                    imgPath: "assets/images/logo.png",
                    title: "speed",
                    onTap: (() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SpeedPage();
                        },
                      ));
                    })),
              ],
            ),
            Column(
              children: [
                ListItems(
                    imgPath: "assets/images/logo.png",
                    title: "Monitor",
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MonitorPage();
                      }));
                    })),
              ],
            ),
            Column(
              children: [
                ListItems(
                    imgPath: "assets/images/logo.png",
                    title: "Tools",
                    onTap: (() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ToolsPage();
                        },
                      ));
                    })),
              ],
            ),
            Column(
              children: [
                ListItems(
                    imgPath: "assets/images/logo.png",
                    title: "setting",
                    onTap: (() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return settingPage();
                        },
                      ));
                    })),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
