import 'package:flutter/material.dart';

class StudyPage extends StatefulWidget {
  const StudyPage({Key? key}) : super(key: key);

  @override
  State<StudyPage> createState() => _ScholarshipState();
}

class _ScholarshipState extends State<StudyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("hello Scholarships")),
    );
  }
}
