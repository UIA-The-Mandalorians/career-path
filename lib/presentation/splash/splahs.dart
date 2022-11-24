import 'package:app/presentation/splash/controller/page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends GetWidget<SplashPageController> {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1A1739),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(top: 45)),
                Container(
                  child: Image.asset(
                    'assets/images/splash.png',
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 150),
                    child: Text("GuiEDU",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: Colors.white),
                    )),
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      '''
Gets You the best career
              guidance
''',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white.withOpacity(0.7)),
                    )),

              ]

          ),
        ),
    );
  }
}