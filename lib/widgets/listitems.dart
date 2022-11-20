import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  final String imgPath;
  final String title;
  final VoidCallback onTap;
  const ListItems(
      {super.key,
      required this.imgPath,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  imgPath,
                  width: 80,
                  height: 80,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 10),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
