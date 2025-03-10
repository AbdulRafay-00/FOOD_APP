
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
    // TODO: implement initState
    super.initState();
    Timer( Duration(seconds: 10), (){

    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Intro_page() ));
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return 
 Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
           AssetImage("assets/splash.png"),fit: BoxFit.contain,),
            
          ),
          // child: Text("bvcvbmnb"),
        )
      
    );
  }
}