import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_mobile/components/home/card.dart';
import 'package:nature_mobile/components/home/card_main.dart';
import 'package:nature_mobile/components/home/navbar.dart';
import 'package:sidebarx/sidebarx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(left: 10, right: 10),
        child: ListView(children: [
          NavBar(),
          SizedBox(
            height: 60,
          ),
          CardMain(
            "https://img.freepik.com/free-psd/environment-banner-template-mock-up_23-2148414723.jpg",
            "Lorem Ipsum Dolar",
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Trending",
            style: GoogleFonts.poppins(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          HomeCard(
            imageUrl:
                "https://images.unsplash.com/photo-1597926661204-6a8994673a6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
            title: "Bio-diversity",
            name: "Biodiversity",
          )
        ]),
      ),
    );
  }
}
