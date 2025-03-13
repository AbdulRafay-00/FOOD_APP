import 'package:flutter/material.dart';
import "wide_use_widget.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "page2.dart";
import "page4.dart";

class Sign_up_page extends StatefulWidget {
  const Sign_up_page({super.key});

  @override
  State<Sign_up_page> createState() => _Sign_up_pageState();
}

class _Sign_up_pageState extends State<Sign_up_page> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  DateTime? date;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(243, 233, 181, 1),
          title: const Text(
            "SIGN UP PAGE",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          toolbarHeight: 90,
          centerTitle: true,
          leading: Icon_Button(() {}, const Icon(Icons.arrow_back_sharp)),
        ),
        body: Stack(
          children: [
            Container(
              color: const Color.fromARGB(243, 233, 181, 1),
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0, // Ensures it takes the full width
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 650,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height:20
                      ),
                      Text("Enter Your Email",
                          style: Theme.of(context).textTheme.titleLarge),
                      Text_Field(
                        controller: controller1,
                        hintText: "example@gmail.com",
                      ),
                          SizedBox(
                        height:10
                      ),
                      Text("Passward",
                          style: Theme.of(context).textTheme.titleLarge),
                      Text_Field(
                        controller: controller2,
                        hintText: "..........",
                        icon: Icon(Icons.visibility),
                        obscureText: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "forget passward?",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(233, 250, 105, 8)),
                          ),
                        ],),
                        
                          SizedBox(
                        height:10
                      ),
                      Text("Enter Your Mobile Number",
                          style: Theme.of(context).textTheme.titleLarge),
                      Text_Field(
                        controller: controller1,
                        hintText: "+92 123 456 789",
                      ),
                          SizedBox(
                        height:20
                      ),

                          Text("Enter Your Date Of Birth",
                          style: Theme.of(context).textTheme.titleLarge),
                      Text_Field(
                        controller: controller1,
                        hintText: "DD / MM / YYY",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("By Continuing You Agree To"),
                        Row(
                          children: [
                             GestureDetector(
                                      onTap: () {},
                                      child: Text("Tearm Of Use",
                                          style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1.5,
                                              color: Color.fromARGB(
                                                  233, 250, 105, 8))),
                                    ),
                                    Text("And"),
                                     GestureDetector(
                                      onTap: () {},
                                      child: Text("Privacy Policy",
                                          style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1.5,
                                              color: Color.fromARGB(
                                                  233, 250, 105, 8))),
                                    )
                          ],
                        )
                      ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Elevted_Button(
                                text: "Sign Up",
                                VoidCallback: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Page()));},
                              ),
                              SizedBox(height: 30),
                              Text("Or SignUp With",
                                  style: TextStyle(
                                      fontSize: 16, letterSpacing: 1.5)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(FontAwesomeIcons.google),
                                  SizedBox(width: 13),
                                  FaIcon(FontAwesomeIcons.facebook),
                                  SizedBox(width: 13),
                                  FaIcon(FontAwesomeIcons.twitter),
                                ],
                              ),
                              SizedBox(height: 18),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already Have An Account?",
                                        style: TextStyle(
                                            fontSize: 16, letterSpacing: 1.5)),
                                    GestureDetector(
                                      onTap: () {
                                         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                      },
                                      child: Text("Login",
                                          style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1.5,
                                              color: Color.fromARGB(
                                                  233, 250, 105, 8))),
                                    )
                                  ])
                            ],
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          child: BottomNavigationBar(
            iconSize: 30,
            type: BottomNavigationBarType.fixed, // Ensure all icons are visible
            backgroundColor: Color(0xFFE95322),
            // selectedItemColor: Colors.white, // Customize selected icon color
            // unselectedItemColor: Colors.black54, // Customize unselected icon color
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.content_copy), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.headphones), label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
