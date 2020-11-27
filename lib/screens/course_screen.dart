import 'package:flutter/material.dart';
import 'package:designcode/constants.dart';
import 'package:designcode/models/course.dart';

class CourseScreen extends StatefulWidget {
  CourseScreen({this.course});

  final Course course;

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          child: Center(
            child: Text(widget.course.courseTitle),
          ),
        ),
      ),
    );
  }
}
