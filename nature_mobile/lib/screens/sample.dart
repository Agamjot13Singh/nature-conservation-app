import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class YourFile extends StatefulWidget {
  @override
  YourFileState createState() => YourFileState();
}

class YourFileState extends State<YourFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SidebarX(
            controller: SidebarXController(selectedIndex: 0),
            items: const [
              SidebarXItem(icon: Icons.home, label: 'Home'),
              SidebarXItem(icon: Icons.search, label: 'Search'),
            ],
          ),
          // Your app screen body
        ],
      ),
    );
  }
}
