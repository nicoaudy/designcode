import 'package:designcode/models/sidebar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SidebarRow(item: sidebarItems[0],)
        ),
      ),
    );
  }
}

class SidebarRow extends StatelessWidget {
  SidebarRow({ @required this.item });
  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42.0,
          height: 42.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              gradient: item.background,
          ),
          child: item.icon
        ),
        SizedBox(width: 12.0,),
        Container(
          child: Text(
            item.title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
              color: Color(0xFF242629),
            ),
          ),
        )
      ],
    );
  }
}
