import 'package:flutter/material.dart';
import 'package:internet_speed/widgets/custom_btn_start.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                CustomBtnContainer(title: "Ping", titleValue: "10 m/s"),
                CustomBtnContainer(title: "Download", titleValue: "143 kb/s"),
                CustomBtnContainer(title: "Upload", titleValue: "200 kb/s")
              ],
            )
          ],
        ),
      ),
    );
  }
}
