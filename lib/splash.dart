// DEC: Splash Screen 
// Features:
// - Displays a static image for 8 seconds before navigating to the next screen.
// - Automatically transitions to the Intro_page after the timer ends.
// - Uses Navigator.pushReplacement to ensure users cannot navigate back to the splash screen
import "package:flutter/material.dart";
import "page1.dart";
import "dart:async";

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Intro_page()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/splash.png"),
          fit: BoxFit.contain,
        ),
      ),
    ));
  }
}
