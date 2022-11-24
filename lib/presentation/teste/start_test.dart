import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

class StartTest extends StatelessWidget {
  const StartTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:70.0,bottom: 40),
                child: Image.asset("assets/images/undraw_true_friends_c-94-g 1.jpg"),
              ),


              Padding(
                padding: const EdgeInsets.only(left:20,right: 20, top: 20 ),
                child: Container(
                    child: Text(
                     '''
        Get instant career
guidance based on the test
     and make your dreams
              come true!
                     ''',

                      maxLines: 20,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
              ),


                 Padding(
                   padding: const EdgeInsets.only(top: 25),
                   child: SizedBox(
                    height: 45,
                    width: 140,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xffE36363),
                          onPrimary: Colors.white54,
                          elevation: 10, // Elevation
                        ),
                        onPressed: () {
                          launchUrl(Uri.parse("http://192.168.137.225:5000"))
                        ;},
                        child: Text(
                          "Start test",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white),

                        )
                    ),
                ),
                 ),
        ]
              )
          ),
      );
;
  }
}