import 'package:flutter/material.dart';

class ToolsDashboardWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  final VoidCallback onTap;
  const ToolsDashboardWidget(
      {required this.imgPath,
      required this.title,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.asset(
                imgPath,
                width: 100,
                height: 100,
              ),
              Text(title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
