import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidebarx/sidebarx.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              CupertinoIcons.bars,
              color: Color(0xffaaadbd),
              size: 40,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Home",
              style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff464459)),
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.email_outlined,
              color: Color(0xffaaadbd),
              size: 28,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notifications,
              color: Color(0xffaaadbd),
              size: 28,
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/women/79.jpg"),
            )
          ],
        ));
  }
}
