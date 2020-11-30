import 'package:flutter/material.dart';
import 'package:designcode/constants.dart';
import 'package:designcode/models/course.dart';
import 'package:designcode/components/cards/course_section_card.dart';

class CourseSectionList extends StatelessWidget {
  List<Widget> courseSectionsWidget() {
    List<Widget> cards = [];

    for (var course in courseSections) {
      cards.add(
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: CourseSectionCard(course: course),
        ),
      );
    }

    cards.add(
      Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text(
          "No more sections to view, look\nfor more in our courses",
          style: kCaptionLabelStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: courseSectionsWidget(),
      ),
    );
  }
}
