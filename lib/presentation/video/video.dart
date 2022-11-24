import 'package:app/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 170,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('''Free Government 
         courses''',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.white)),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff1A1739),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 100),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                    ),
                    Icon(Icons.search, size: 37, color: Colors.black)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  height: 250,
                  width: 400,
                  child: Card(
                    margin: EdgeInsets.all(10),
                    shadowColor: Colors.blueGrey,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                height: 130,
                                width: 400,
                                child: Image.asset(
                                  ImageConstant.video01,
                                  fit: BoxFit.cover,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Basic Principles and Calculations",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'in Chemical Engineering',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('Duration : 12 weeks'),
                                  Text('website: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  height: 270,
                  width: 400,
                  child: Card(
                    margin: EdgeInsets.all(10),
                    shadowColor: Colors.grey,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                height: 170,
                                width: 400,
                                child: Image.asset(
                                  ImageConstant.video02,
                                  fit: BoxFit.cover,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Basic Principles and Calculations",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'in Chemical Engineering',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('Duration : 12 weeks'),
                                  Text('website: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  height: 270,
                  width: 400,
                  child: Card(
                    margin: EdgeInsets.all(10),
                    shadowColor: Colors.blueGrey,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                height: 170,
                                width: 400,
                                child: Image.asset(
                                  ImageConstant.video01,
                                  fit: BoxFit.cover,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Basic Principles and Calculations",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'in Chemical Engineering',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('Duration : 12 weeks'),
                                  Text('website: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}