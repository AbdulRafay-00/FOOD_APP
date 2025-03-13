import "package:flutter/material.dart";
import 'wide_use_widget.dart';
import "Costimized_Button.dart";
import 'page5.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
 appBar: AppBar(
  toolbarHeight: 100,
  backgroundColor: const Color.fromARGB(243, 233, 181, 1),
  title: SizedBox(
    width: 200, // Adjust width as needed
    child: Text_Field(hintText: "Search Here", icon: Icon(Icons.search)),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      
      child: Container( 
        decoration: BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        ),
        child: Icon_Button1(icon: Icon(Icons.shopping_cart)),)
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child:Container(
        decoration: BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        ),
         child:Icon_Button1(icon: Icon(Icons.notifications)),)
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        ),
        child : Icon_Button1(icon: Icon(Icons.person)),)
    ),
  ],
),

        
        body: Stack(
          children: [
            Container(
              color: const Color.fromARGB(243, 233, 181, 1),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("Good Morning",style: TextStyle( fontSize:35,color:Colors.white,fontWeight:FontWeight.bold)),
                    Text("Rize And Shine It's Breakfast Time",style: TextStyle(fontSize:20)),
                  ]
                ),
              )
            ),
            Positioned(
               bottom: 0,
              left: 0,
              right: 0, // Ensures it takes the full width
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 590,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),

                  ),
                ),
                
               child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Image.asset("assets/Bot-menu 1.png"),
                    Image.asset("assets/Bot-menu (2).png"),
                    Image.asset("assets/Bot-menu (3).png"),
                    Image.asset("assets/Bot-menu (4).png"),
                    Image.asset("assets/Bot-menu5.png"),
                    ],),
                    SizedBox(height: 7,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                    Text("Best Seller",style: Theme.of(context).textTheme.titleLarge,),
               
                    Text("View All >")

                      ],
                    ),
                    SizedBox( height:8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    Image.asset("imges_of_menu_item/image1.png"),
                    Image.asset("imges_of_menu_item/image2.png"),
                    Image.asset("imges_of_menu_item/image3.png"),
                    Image.asset("imges_of_menu_item/image4.png"),

                      ],
                    ),
                    SizedBox( height: 10),
                    Image.asset("imges_of_menu_item/M_image.png"),
                    SizedBox(height:10),
                    SizedBox(height: 20),
                    Row(
                      children:[

                    Text("Recommend",style: Theme.of(context).textTheme.titleLarge),
                      ]
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                    Image.asset("imges_of_menu_item/L_image1.png"),
                    Image.asset("imges_of_menu_item/L_image2.png"),

                      ]
                    )



                ],),
              ),
              )
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
                // selectedItemColor: Colors.white, // Customize selected icon color
                // unselectedItemColor: Colors.black54, // Customize unselected icon color
                items: [
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.home)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.food_bank)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => FoodApp()));},icon: Icon(Icons.favorite)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.content_copy)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.headphones)), label: ""),  
                  // BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: ""),
              
                ],
              ),
            
          ),
        ),
        )
    );}}