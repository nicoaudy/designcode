import 'package:flutter/material.dart';
import 'package:designcode/models/course.dart';
import 'package:designcode/components/cards/completed_courses_card.dart';

class CompletedCourseList extends StatefulWidget {
  @override
  _CompletedCourseListState createState() => _CompletedCourseListState();
}

class _CompletedCourseListState extends State<CompletedCourseList> {
  List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: completedCourses.map((course) {
        var index = completedCourses.indexOf(course);
        return Container(
          width: 7.0,
          height: 7.0,
          margin: EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? Color(0xFF0971FE) : Color(0xFFA6AEBD),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Opacity(
                opacity: currentPage == index ? 1.0 : 0.5,
                child: CompletedCoursesCard(
                  course: completedCourses[index],
                ),
              );
            },
            itemCount: completedCourses.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            controller: PageController(
              initialPage: 0,
              viewportFraction: 0.75,
            ),
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}
