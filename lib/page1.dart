// ****************** Main App Entry Point ******************
// This file serves as the entry point of the application.
//
// Functionality:
//  - Displays the Splash screen first.
//  - After the splash screen, it navigates to the Intro_page.
//  - The Intro_page provides an introduction to the app with an option to proceed to login.
//
// Dependencies:
//  - 'splash.dart' for the splash screen.
//  - 'wide_use_widget.dart' for reusable UI components.
//  - 'page2.dart' (should contain the LoginPage).

import "package:flutter/material.dart";
import "splash.dart";
import "wide_use_widget.dart";
import "page2.dart";

void main() {
  runApp(page1());
}

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash(),
    );
  }
}

class Intro_page extends StatefulWidget {
  const Intro_page({super.key});

  @override
  State<Intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<Intro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/page1_bg.png"),
        )),
        child: Stack(children: [
          Positioned(
            bottom: 0,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                width: 398,
                height: 338,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/Transfer Document icon.png"),
                    SizedBox(height: 10),
                    Text(
                      "ORDER FOR FOOD",
                      style: TextStyle(
                          color: Color(0xFFE95322),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 35),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet,\n conse ctetur  adipiscing elit,\n sed do eiusmod tempor incididunt ut labore et dolore magna.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 30),
                    Elevted_Button(
                        text: "LOGIN",
                        VoidCallback: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        })
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
