import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:80.0),
                    child: Image.asset('assets/img.png'),
                  ),
                  Padding(padding: EdgeInsets.only(top:80.0),
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
                        )),),
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
                          onPressed: () {},
                          child: Text(
                            "View Result",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),

                          )
                      ),
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
                          onPressed: () {},
                          child: Text(
                            "Back to Start",
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
      ),
    );
  }
}

