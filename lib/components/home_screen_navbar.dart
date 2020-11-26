import 'package:flutter/material.dart';
import 'package:designcode/constants.dart';
import 'package:designcode/components/search_field.dart';
import 'package:designcode/components/sidebar_button.dart';

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
            backgroundImage: AssetImage('asset/images/profile.jpg'),
          ),
        ],
      ),
    );
  }
}
