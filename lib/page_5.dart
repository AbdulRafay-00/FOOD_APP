  // *********************"Best Seller Page"********************. 
  //  It features:
  // - AppBar and a customizable `Icon_Button1` for navigation called from Costimized_Button.dart fill.
  // - A `Stack` layout with a decorative background and a scrollable content section.
  // - A Widget `GridView.count` to showcase dishes, each represented by an image, name, and price.
  
import 'package:flutter/material.dart';
import "Costimized_Button.dart";
import "page4.dart";

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(243, 233, 181, 1),
        toolbarHeight: 110,
        title: Text("Best Seller",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        leading: Icon_Button1(
          VoidCallback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Home_Page()));
          },
          color: Color(0xFFE95322),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(243, 233, 181, 1),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: const Color.fromARGB(243, 255, 255, 255),
                ),
                height: 750,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text("Discover our most popular dishes!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 3,
                        shrinkWrap: true,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: [
                          Container(
                            color: Colors.amber,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "images_of_page5/image1.png",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 150,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Sunny\nBruschetta",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Image.asset("images_of_page5/a.png",
                                            fit: BoxFit.cover,
                                            width: 45,
                                            height: 45),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            "Made From Frash, Which Can\nRock Your Taste Buds... "),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 95,
                                  right: 0,
                                  child: Image.asset(
                                      "images_of_page5/price1.png",
                                      fit: BoxFit.contain,
                                      width: 60,
                                      height: 60),
                                )
                              ],
                            ),

                            //
                          ),
                          Container(
                            color: Colors.amber,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "images_of_page5/image2.png",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 150,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Gourmet\nGrilled Skewers",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Image.asset("images_of_page5/a.png",
                                            fit: BoxFit.cover,
                                            width: 45,
                                            height: 45),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            "Made From Frash, Which Can\nRock Your Taste Buds... "),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 95,
                                  right: 0,
                                  child: Image.asset(
                                      "images_of_page5/price1.png",
                                      fit: BoxFit.contain,
                                      width: 60,
                                      height: 60),
                                )
                              ],
                            ),

                            //
                          ),
                          Container(
                            color: Colors.amber,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "images_of_page5/image3.png",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 150,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Barbecue\nTacos",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Image.asset("images_of_page5/a.png",
                                            fit: BoxFit.cover,
                                            width: 45,
                                            height: 45),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            "Made From Frash, Which Can\nRock Your Taste Buds... "),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 95,
                                  right: 0,
                                  child: Image.asset(
                                      "images_of_page5/price1.png",
                                      fit: BoxFit.contain,
                                      width: 60,
                                      height: 60),
                                )
                              ],
                            ),

                            //
                          ),
                          Container(
                            color: Colors.amber,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "images_of_page5/image4.png",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 150,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Broccoli\nlasagna",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Image.asset("images_of_page5/a.png",
                                            fit: BoxFit.cover,
                                            width: 45,
                                            height: 45),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            "Made From Frash, Which Can\nRock Your Taste Buds... "),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 95,
                                  right: 0,
                                  child: Image.asset(
                                      "images_of_page5/price1.png",
                                      fit: BoxFit.contain,
                                      width: 60,
                                      height: 60),
                                )
                              ],
                            ),

                            //
                          ),
                          Container(
                            color: Colors.amber,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "images_of_page5/image5.png",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 150,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Icecream\nSundy",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Image.asset("images_of_page5/a.png",
                                            fit: BoxFit.cover,
                                            width: 45,
                                            height: 45),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            "Made From Frash, Which Can\nRock Your Taste Buds... "),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 95,
                                  right: 0,
                                  child: Image.asset(
                                      "images_of_page5/price1.png",
                                      fit: BoxFit.contain,
                                      width: 60,
                                      height: 60),
                                )
                              ],
                            ),

                            //
                          ),
                          Container(
                            color: Colors.amber,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "images_of_page5/image6.png",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 150,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Strawberry\nCream Punch",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Image.asset("images_of_page5/a.png",
                                            fit: BoxFit.cover,
                                            width: 45,
                                            height: 45),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            "Made From Frash, Which Can\nRock Your Taste Buds... "),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 95,
                                  right: 0,
                                  child: Image.asset(
                                      "images_of_page5/price1.png",
                                      fit: BoxFit.contain,
                                      width: 60,
                                      height: 60),
                                )
                              ],
                            ),

                            //
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
       bottomNavigationBar: ClipRRect(
            
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          child: Container(
            // height: 81,
            child:
              BottomNavigationBar(
                
                showSelectedLabels: false,
                showUnselectedLabels: false,
                iconSize: 30,
                type: BottomNavigationBarType.fixed, // Ensure all icons are visible
                backgroundColor: Color(0xFFE95322),
                selectedItemColor: Colors.white, // Customize selected icon color
                items: [
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.home)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.food_bank)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Page()));},icon: Icon(Icons.favorite)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.content_copy)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.headphones)), label: ""),  
            
                ],
              ),

    )
    )));
  }
}
