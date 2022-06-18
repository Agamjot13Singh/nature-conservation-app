import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(left: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  CupertinoIcons.bell_fill,
                  color: Color(0xfff405B28),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  CupertinoIcons.settings_solid,
                  color: Color(0xfff405B28),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            Text('Help us save earth',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                    color: Color(0xfff314222))),
            SizedBox(
              height: 40,
            ),
            Text('Actions')
            ListView(
              scrollDirection: Axis.horizontal,
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
