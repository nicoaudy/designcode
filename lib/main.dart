import 'package:flutter/material.dart';
import 'package:designcode/constants.dart';
import 'package:designcode/components/home_screen_navbar.dart';
import 'package:designcode/components/lists/recent_course_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        color: kBackgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              HomeScreenNavbar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Recent",
                      style: kLargeTitleStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "23 courses, more coming",
                      style: kSubtitleStyle,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              RecentCourseList()
            ],
          ),
        ),
      )),
    );
  }
}
