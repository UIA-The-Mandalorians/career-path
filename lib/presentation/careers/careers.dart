import 'package:flutter/material.dart';

class CareersPage extends StatefulWidget {
  const CareersPage({Key? key}) : super(key: key);

  @override
  State<CareersPage> createState() => _ScholarshipState();
}

class _ScholarshipState extends State<CareersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("hello Careers")),
    );
  }
}
