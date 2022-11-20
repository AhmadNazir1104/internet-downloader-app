import 'package:flutter/material.dart';

class SpeedPage extends StatelessWidget {
  const SpeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SpeedCheck",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.wifi,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height / 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: Center(
                            child: Text(
                          "TEST",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "ClICK HERE TO BEGIN",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("data"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("data"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("data"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("data"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("data"),
                      SizedBox(
                        height: 2,
                      ),
                      Text("data"),
                      SizedBox(
                        height: 2,
                      ),
                      Text("data"),
                      SizedBox(
                        height: 2,
                      ),
                      Text("data"),
                      SizedBox(
                        height: 2,
                      ),
                      Text("data"),
                      SizedBox(
                        height: 2,
                      ),
                      Text("data"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
