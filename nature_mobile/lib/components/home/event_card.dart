import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard extends StatefulWidget {
  const EventCard(
      {Key? key, required this.name, required this.plant, required this.time})
      : super(key: key);

  final String name;
  final String plant;
  final String time;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  var d = [CupertinoIcons.tree, CupertinoIcons.heart_fill];

  IconData pick() {
    return d[Random().nextInt(d.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Icon(
          pick(),
          size: 30,
          color: Colors.green[700],
          shadows: const [
            Shadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(0, 1),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.name} planted ${widget.plant}",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  CupertinoIcons.clock_fill,
                  size: 20,
                  color: Colors.green[900],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.time,
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.green[900],
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
