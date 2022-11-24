import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6E6E6),
      body: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 35)),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 15),
              width: 393,
              height: 58,
              color: Color(0xff000000).withOpacity(0.3),
              child: Text("RESULT",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          offset: Offset(2.2, 2.2), //position of shadow
                          blurRadius: 6.0, //blur intensity of shadow
                          color: Colors.black
                              .withOpacity(0.5), //color of shadow with opacity
                        ),

                        //add more shadow with different position offset here
                      ],
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(
                'assets/images/Figpie.png',
                height: 200,
                width: 200,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  '''
 According to the graph the
best career option for you is
''',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.only(top: 18),
              child: Text(
                "Engineering",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff411992)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                width: 217,
                height: 47,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        elevation: 5,
                        primary: Color(0xffE36363),
                        shadowColor: Color(0xff000000)),
                    onPressed: () {
                      // we dont have
                    },
                    child: Text("Explore the career",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: SizedBox(
                width: 217,
                height: 46,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: Color(0xffFFFFFF),
                        elevation: 5, //elevation of button
                        shadowColor: Color(0xff000000)),
                    onPressed: () {
                      Get.offNamed(AppRoutes.homePageScreen);
                    },
                    child: Text("Back to Start",
                        style: TextStyle(
                            color: Color(0xffE36363),
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
