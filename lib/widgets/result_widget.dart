import 'package:flutter/material.dart';

class ReslutWidget extends StatelessWidget {
  const ReslutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Row(
        children: [
          Row(
            children: [Text("1"), Text("1"), Text("3"), Text("5"), Text("7")],
          )
        ],
      ),
    );
  }
}
