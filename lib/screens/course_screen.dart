import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:designcode/constants.dart';
import 'package:designcode/models/course.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CourseScreen extends StatefulWidget {
  CourseScreen({this.course});

  final Course course;

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  Widget indicators() {
    List<Widget> indicators = [];

    for (var i = 0; i < 9; i++) {
      indicators.add(
        Container(
          width: 7.0,
          height: 7.0,
          margin: EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == 0 ? Color(0xFF0971FE) : Color(0xFFA6AEBD),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  PanelController panelController;

  @override
  void initState() {
    super.initState();

    panelController = PanelController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: SlidingUpPanel(
          controller: panelController,
          backdropEnabled: true,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34),
          ),
          color: kCardPopupBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, -12),
              blurRadius: 32.0,
            ),
          ],
          minHeight: 0.0,
          maxHeight: MediaQuery.of(context).size.height * 0.95,
          panel: CourseSectionScreen(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  overflow: Overflow.clip,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          gradient: widget.course.background,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: SafeArea(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Hero(
                                        tag: widget.course.logo,
                                        child: Image.asset(
                                          'asset/logos/${widget.course.logo}',
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Hero(
                                            tag: widget.course.courseSubtitle,
                                            child: Text(
                                              widget.course.courseSubtitle,
                                              style: kSecondaryCalloutLabelStyle
                                                  .copyWith(
                                                      color: Colors.white70),
                                            ),
                                          ),
                                          Hero(
                                            tag: widget.course.courseTitle,
                                            child: Text(
                                              widget.course.courseTitle,
                                              style: kLargeTitleStyle.copyWith(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 36.0,
                                        height: 36.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          color: kPrimaryLabelColor
                                              .withOpacity(0.8),
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 28.0),
                              Expanded(
                                child: Hero(
                                  tag: widget.course.illustration,
                                  child: Image.asset(
                                    'asset/illustrations/${widget.course.illustration}',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 28.0),
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 12.5,
                          bottom: 13.5,
                          left: 20.5,
                          right: 14.5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: kShadowColor,
                              blurRadius: 16.0,
                              offset: Offset(0, 4),
                            )
                          ],
                        ),
                        width: 60.0,
                        height: 60.0,
                        child: Image.asset('asset/icons/icon-play.png'),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                    left: 28,
                    right: 28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Container(
                                    child: CircleAvatar(
                                      child: Icon(
                                        Platform.isAndroid
                                            ? Icons.people
                                            : CupertinoIcons.group_solid,
                                        color: Colors.white,
                                      ),
                                      radius: 21.0,
                                      backgroundColor: kCourseElementIconColor,
                                    ),
                                    decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      borderRadius: BorderRadius.circular(29.0),
                                    ),
                                  ),
                                ),
                                height: 58.0,
                                width: 58.0,
                                decoration: BoxDecoration(
                                  gradient: widget.course.background,
                                  borderRadius: BorderRadius.circular(29.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "28.7k",
                                style: kTitle2Style,
                              ),
                              Text(
                                "Students",
                                style: kSearchPlaceholderStyle,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Container(
                                    child: CircleAvatar(
                                      child: Icon(
                                        Platform.isAndroid
                                            ? Icons.format_quote
                                            : CupertinoIcons.news_solid,
                                        color: Colors.white,
                                      ),
                                      radius: 21.0,
                                      backgroundColor: kCourseElementIconColor,
                                    ),
                                    decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      borderRadius: BorderRadius.circular(29.0),
                                    ),
                                  ),
                                ),
                                height: 58.0,
                                width: 58.0,
                                decoration: BoxDecoration(
                                  gradient: widget.course.background,
                                  borderRadius: BorderRadius.circular(29.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12.4k",
                                style: kTitle2Style,
                              ),
                              Text(
                                "Comments",
                                style: kSearchPlaceholderStyle,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.0, vertical: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      indicators(),
                      GestureDetector(
                        onTap: () {
                          panelController.open();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kShadowColor,
                                offset: Offset(0, 12),
                                blurRadius: 16.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          width: 80.0,
                          height: 40.0,
                          child: Text(
                            "View All",
                            style: kSearchTextStyle,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter - это относительно новый набор инструментов, который позволяет легко создавать кроссплатформенные приложения, которые великолепно выглядят и просты в использовании. Используя собственные компоненты платформы, мы создадим приложение, которое может работать как на iOS, так и на Android, которое будет выглядеть так, как будто оно было разработано изначально для них. Кроме того, мы увидим, как с помощью единой кодовой базы Flutter обеспечивает собственную производительность, горячую перезагрузку для быстрой разработки и доступ к красивым нативным компонентам.",
                        style: kBodyLabelStyle,
                      ),
                      SizedBox(height: 24.0),
                      Text("About this course", style: kTitle1Style),
                      SizedBox(height: 24.0),
                      Text(
                        "Подобно SwiftUI и React, Flutter использует декларативный пользовательский интерфейс, что делает его одним из лучших фреймворков для быстрого проектирования и разработки. Вот почему этот курс был разработан как для дизайнеров, так и для разработчиков. Мы рассмотрим, как создавать приложения для обеих основных мобильных операционных систем, Android и iOS, с помощью Flutter и его простого в освоении языка программирования Dart. Этот курс предназначен для новичков и поможет вам окунуться в постоянно расширяющийся океан, которым является Flutter. Мы снабдили этот курс приемами дизайна и эффективными рабочими процессами, которые помогут вам создавать отличные пользовательские интерфейсы в рекордно короткие сроки.",
                        style: kBodyLabelStyle,
                      ),
                      SizedBox(height: 24.0),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseSectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(32.0),
            decoration: BoxDecoration(
              color: kCardPopupBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34.0),
                bottomLeft: Radius.circular(34.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 12),
                  blurRadius: 32.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Course Section",
                  style: kTitle2Style,
                ),
                SizedBox(height: 5.0),
                Text(
                  "12 Section",
                  style: kSubtitleStyle,
                ),
              ],
            ),
          ),
          CourseSectionList(),
          SizedBox(height: 32.0)
        ],
      ),
    );
  }
}

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

class CourseSectionCard extends StatelessWidget {
  CourseSectionCard({@required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(41.0),
          gradient: course.background,
          boxShadow: [
            BoxShadow(
              color: course.background.colors[0].withOpacity(0.3),
              blurRadius: 30.0,
              offset: Offset(0, 20),
            ),
            BoxShadow(
              color: course.background.colors[1].withOpacity(0.3),
              blurRadius: 30.0,
              offset: Offset(0, 20),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(41),
          child: Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'asset/illustrations/${course.illustration}',
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course.courseSubtitle,
                            style: kCardSubtitleStyle,
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            course.courseTitle,
                            style: kCardTitleStyle,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
