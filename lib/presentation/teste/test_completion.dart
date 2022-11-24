import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

class Completion extends StatelessWidget {
  const Completion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Container(
              height: 140,
              width: 140,
              child: Image.asset('assets/images/img_11.png')),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: Container(
              child: Text(
            '''
 Hurray! You have
completed the test
''',
            maxLines: 20,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.deepPurpleAccent,
                  onPrimary: Colors.white54,
                  elevation: 10, // Elevation
                ),
                onPressed: () {
                  Get.toNamed(AppRoutes.result);
                },
                child: Text(
                  "View Result",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.deepPurpleAccent,
                  onPrimary: Colors.white54,
                  elevation: 10, // Elevation
                ),
                onPressed: () {
                  Get.offNamed(AppRoutes.homePageScreen);
                },
                child: Text(
                  "Back to Start",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
          ),
        ),
      ])),
    );
  }
}
