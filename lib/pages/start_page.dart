import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internet_speed/screens/start_screen.dart';
import 'package:internet_speed/utility/app_strings.dart';
import '../utility/app_strings.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return StartScreen();
                  },
                ));
              },
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            appColors().primaryColor,
                            appColors().secondaryColor
                          ]),
                      shape: BoxShape.circle,
                      color: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        Center(
                            child: FaIcon(
                          FontAwesomeIcons.powerOff,
                          size: 60,
                          color: Colors.white,
                        )),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "START",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
