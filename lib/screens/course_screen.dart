import 'dart:io';

import 'package:flutter/cupertino.dart';
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
          child: SingleChildScrollView(
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
