import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMain extends StatelessWidget {
  String imgLink;
  String blogTitle;
  CardMain(this.imgLink, this.blogTitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          child: Image.network(
            imgLink,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(blogTitle,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Color(0xff464459),
                  fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
