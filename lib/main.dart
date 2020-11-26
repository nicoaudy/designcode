import 'package:flutter/material.dart';
import 'package:designcode/constants.dart';
import 'package:designcode/models/course.dart';
import 'package:designcode/models/cards/recent_course_card.dart';

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
              RecentCourseList()
            ],
          ),
        ),
      )),
    );
  }
}

class RecentCourseList extends StatefulWidget {
  @override
  _RecentCourseListState createState() => _RecentCourseListState();
}

class _RecentCourseListState extends State<RecentCourseList> {
  List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicator() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return RecentCourseCard(
                course: recentCourses[index],
              );
            },
            itemCount: recentCourses.length,
            controller: PageController(initialPage: 0, viewportFraction: 0.63),
          ),
        ),
        updateIndicator()
      ],
    );
  }
}

class HomeScreenNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(),
          SearchFieldWidget(),
          Icon(Icons.notifications, color: kPrimaryLabelColor),
          SizedBox(width: 16),
          CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage('asset/images/profile.jpg')),
        ],
      ),
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 33),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              cursorColor: kPrimaryLabelColor,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: kPrimaryLabelColor,
                  size: 20.0,
                ),
                border: InputBorder.none,
                hintText: "Search for courses",
                hintStyle: kSearchPlaceholderStyle,
              ),
              style: kSearchTextStyle,
              onChanged: (newText) => print(newText),
            ),
          ),
        ),
      ),
    );
  }
}

class SidebarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => print("Sidebar button pressed"),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(maxWidth: 40, maxHeight: 40),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: kShadowColor, offset: Offset(0, 12), blurRadius: 16.0)
            ]),
        child: Image.asset('asset/icons/icon-sidebar.png',
            color: kPrimaryLabelColor),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
      ),
    );
  }
}
