import 'package:flutter/material.dart';

class CustomBtnContainer extends StatelessWidget {
  final String title;
  final String titleValue;
  const CustomBtnContainer(
      {required this.title, required this.titleValue, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          titleValue,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
