import 'package:flutter/material.dart';
import 'wide_use_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller1=TextEditingController();
  final controller2=TextEditingController();
  final controller3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          
          backgroundColor: const Color.fromARGB(243, 233, 181, 1),
          
          title: const Text("LOGIN PAGE",style: TextStyle(fontSize: 30, color: Colors.black),),
          toolbarHeight: 70,
          centerTitle: true,
          leading: Icon_Button(() {}, const Icon(Icons.arrow_back_sharp)),
        ),
        body: Stack(
          children: [
            Container(
         color: const Color.fromARGB(243, 233, 181, 1),
          height:double.infinity,
          width: double.infinity,

            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0, // Ensures it takes the full width
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 630,
                decoration: BoxDecoration(
               color: Colors.white ,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    SizedBox(
                      height: 20
                      ),
                    Text("WELCOME",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 35),),
                    SizedBox(
                      height: 10
                      ),
                      Text("Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", style: TextStyle(fontSize: 20),),
                      SizedBox(
                      height: 20
                      ),
                      Text("Email Or Mobile Number", style: Theme.of(context).textTheme.titleLarge),
                      
                      Text_Field(controller: controller1,hintText: "Enter Email Or Mobile No",),
                        SizedBox(
                      height: 20
                      ),
                      Text("Passward", style: Theme.of(context).textTheme.titleLarge),
                      Text_Field(controller: controller2,hintText: "Enter Your Passward",icon: Icon(Icons.visibility),obscureText: true,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("forget passward?",style: TextStyle( fontSize:15, color: Color.fromARGB(233, 250, 105, 8) ),),
                        ],
                      ),
                          SizedBox(height:30),
                          Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Column(
                        children: [
                      Elevted_Button(text: "Login", VoidCallback: (){},),
                              SizedBox( height:30),
                          Text("Or SignUp With",style:TextStyle(fontSize: 16,letterSpacing: 1.5)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Icon(Icons.google)
                              FaIcon(FontAwesomeIcons.google),
                              SizedBox( width:13),
                              FaIcon(FontAwesomeIcons.facebook),
                              SizedBox( width:13),
                              FaIcon(FontAwesomeIcons.twitter),
                            ],
                          ),
                             SizedBox( height:18),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children:[
                           Text("Don/'t Have An Account?",style:TextStyle(fontSize: 16,letterSpacing: 1.5)),
                              GestureDetector(
                                onTap: () {
                                  
                                },
                            child:Text("Sign Up",style:TextStyle(fontSize: 16,letterSpacing: 1.5,  color: Color.fromARGB(233, 250, 105, 8))),
                             
                              )
                              ]

                             )


                        ],
                      )
                        ],
                            
                          )

                  ]
                ),
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
           BottomNavigationBarItem(icon: Icon(Icons.content_copy), label: ""),
           BottomNavigationBarItem(icon: Icon(Icons.headphones), label: ""),
         ],
       ),
     ),
      ),
    );
  }
}
