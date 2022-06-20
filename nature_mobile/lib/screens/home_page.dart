import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_mobile/components/home/card.dart';
import 'package:nature_mobile/components/home/event_card.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum:
            const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(CupertinoIcons.tree,
                    size: 50,
                    color: Colors.green[800],
                    shadows: const [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      CupertinoIcons.bell_fill,
                      color: Color(0xfff405B28),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.settings,
                      color: Color(0xfff405B28),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    // CircleAvatar(
                    //   radius: 20,
                    //   backgroundImage: AssetImage(""),
                    //   backgroundColor: Colors.green[900],
                    // ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'How are you, {Name}?',
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xfff405B28),
              ),
            ),
            Text(
              'Help us save earth',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 34,
                color: Color(0xfff314222),
              ),
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.max,
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Activity',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff314222),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Statistics',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff314222),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'My plants',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff314222),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest plants",
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xfff314222),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      CupertinoIcons.square_grid_2x2_fill,
                      color: Color(0xfff314222),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      CupertinoIcons.list_bullet,
                      color: Color(0xfff314222),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //TODO: Needs fixing to display cards horizontally
            // Container(
            //   height: 300,
            //   width: 300,
            //   child: ListView(
            //     shrinkWrap: true,
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       HomeCard(
            //         ago: "5min ago",
            //         title: "Planted evergreen tree",
            //         imageUrl:
            //             "https://mukama.imgix.net/img/cms/5c2a619049bf856fa4b291704453cf885701bf06.jpg?w=1000&h=1000&fit=crop&auto=format&auto=compress",
            //         name: "James",
            //       ),
            //       HomeCard(
            //         ago: "5min ago",
            //         title: "Planted evergreen tree",
            //         imageUrl:
            //             "https://mukama.imgix.net/img/cms/5c2a619049bf856fa4b291704453cf885701bf06.jpg?w=1000&h=1000&fit=crop&auto=format&auto=compress",
            //         name: "James",
            //       )
            //     ],
            //   ),
            // )
            HomeCard(
              ago: "5min ago",
              title: "Planted evergreen tree",
              imageUrl:
                  "https://mukama.imgix.net/img/cms/5c2a619049bf856fa4b291704453cf885701bf06.jpg?w=1000&h=1000&fit=crop&auto=format&auto=compress",
              name: "James",
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today", style: GoogleFonts.lato(fontSize: 20)),
                Text(
                  "SEE ALL",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.green[600],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                EventCard(
                  name: "Richard",
                  plant: "evergreen tree",
                  time: "12:27 AM",
                ),
                SizedBox(
                  height: 10,
                ),
                EventCard(
                  name: "Emily",
                  plant: "tanabata tree",
                  time: "12:31 AM",
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Plant your first tree",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(20),
                  backgroundColor: MaterialStateProperty.all(Colors.green[400]),
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(1000)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
