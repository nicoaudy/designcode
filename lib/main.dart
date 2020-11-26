import 'package:designcode/models/course.dart';
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
              RecentCourseList(),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 25.0,
                  bottom: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Explore",
                      style: kTitle1Style,
                    )
                  ],
                ),
              ),
              ExploreCourseList(),
            ],
          ),
        ),
      )),
    );
  }
}

class ExploreCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return ExploreCourseCard(course: exploreCourses[index]);
        },
      ),
    );
  }
}

class ExploreCourseCard extends StatelessWidget {
  ExploreCourseCard({this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
