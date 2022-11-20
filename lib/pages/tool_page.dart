import 'package:flutter/material.dart';
import 'package:internet_speed/widgets/tool_dashborad_widget.dart';

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              children: [
                ToolsDashboardWidget(
                    imgPath: "assets/images/logo.png",
                    title: "Schedule",
                    onTap: () {}),
                ToolsDashboardWidget(
                  imgPath: "assets/images/logo.png",
                  title: "Analytics",
                  onTap: (() {}),
                )
              ]),
        ),
      ),
    );
  }
}
