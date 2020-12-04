import 'package:designcode/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:designcode/constants.dart';
import 'package:designcode/components/search_field.dart';
import 'package:designcode/components/sidebar_button.dart';

class HomeScreenNavbar extends StatelessWidget {
  HomeScreenNavbar({@required this.triggerAnimation});

  final Function triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          SearchFieldWidget(),
          Icon(Icons.notifications, color: kPrimaryLabelColor),
          SizedBox(width: 16),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            ),
            child: CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage('asset/images/profile.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
