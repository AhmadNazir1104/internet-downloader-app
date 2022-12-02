import 'package:flutter/material.dart';
import 'package:internet_speed/screens/phone_info.dart';
import 'package:internet_speed/screens/wifi_info.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Privecy"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return WifiInfoScreen();
                // }
                // )
                // );
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
    );
  }
}
