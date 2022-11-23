import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text("data"),
      SettingsList(
        sections: [
          SettingsSection(
            tiles: [
              SettingsTile(
                title: Text("Language"),
                leading: Icon(Icons.language),
                onPressed: (context) {},
              )
            ],
          )
        ],
      )
    ]));
  }
}
