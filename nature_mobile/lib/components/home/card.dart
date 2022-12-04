import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.name,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String name;
  // final String ago;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: Image.network(imageUrl).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}




//  Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(60),
//                     color: Colors.black.withOpacity(0.3),
//                   ),
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       CupertinoIcons.heart_fill,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),