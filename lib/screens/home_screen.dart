import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:internet_speed/pages/result_page.dart';
import 'package:internet_speed/pages/setting_page.dart';
import 'package:internet_speed/pages/start_page.dart';
import 'package:internet_speed/screens/phone_info.dart';
import 'package:internet_speed/screens/wifi_info.dart';
import 'package:internet_speed/utility/app_strings.dart';
import 'package:internet_speed/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    StartPage(),
    ResultPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomeAppBar(titleTxt: "Internet Speed"),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      appColors().primaryColor,
                      appColors().secondaryColor
                    ])),
                child: Text("Spped")),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PhoneInfoScreen();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.wifi),
              title: Text("Wifi"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WifiInfoScreen();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: (() {
                Navigator.of(context).pop();
              }),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("About Us"),
            ),
            Divider(
              height: 2,
            ),
            ListTile(
              title: Text("Version: 1.0.1"),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(children: [
        Container(
          height: 75.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                appColors().primaryColor,
                appColors().secondaryColor
              ])),
        ),
        BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true,
          itemCornerRadius: 24.r,
          backgroundColor: Colors.transparent,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _selectedIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: FaIcon(
                FontAwesomeIcons.powerOff,
                color: _selectedIndex == 0
                    ? appColors().primaryColor
                    : Colors.white,
              ),
              title: Text(
                'Start',
                style: TextStyle(
                  color: _selectedIndex == 0
                      ? appColors().primaryColor
                      : Colors.white,
                ),
              ),
              activeColor: Colors.white,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: FaIcon(
                FontAwesomeIcons.squarePollVertical,
                color: _selectedIndex == 1
                    ? appColors().primaryColor
                    : Colors.white,
              ),
              title: Text(
                'Result',
                style: TextStyle(
                  color: _selectedIndex == 1
                      ? appColors().primaryColor
                      : Colors.white,
                ),
              ),
              activeColor: Colors.white,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: FaIcon(
                FontAwesomeIcons.gears,
                color: _selectedIndex == 2
                    ? appColors().primaryColor
                    : Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: _selectedIndex == 2
                      ? appColors().primaryColor
                      : Colors.white,
                ),
              ),
              activeColor: Colors.white,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ]),
    ));
  }
}
