import 'package:flutter/material.dart';
import "Costimized_Button.dart";
import "page4.dart";


class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: BestSellerScreen(),
    );
  }
}

class BestSellerScreen extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Sunny Bruschetta',
      'image': 'images_of_page5/image1.png',
      'price': 15.00,
    },
    {
      'name': 'Gourmet Grilled Skewers',
      'image':'images_of_page5/image2.png',
      'price': 12.00,
    },
    {
      'name': 'Barbecue Tacos',
      'image':'images_of_page5/image3.png',
      'price': 15.00,
    },
    {
      'name': 'Broccoli Lasagna',
      'image': 'images_of_page5/image4.png',
      'price': 12.00,
    },
    {
      'name': 'Iced Coffee',
      'image': 'images_of_page5/image5.png',
      'price': 5.00,
    },
    {
      'name': 'Strawberry Cheesecake',
      'image': 'images_of_page5/image6.png',
      'price': 12.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        elevation: 0,
        title: Text("Best Seller", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Discover our most popular dishes!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                return FoodCard(food: foodItems[index]);
              },
            ),
          ),
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
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Page()));},icon: Icon(Icons.home)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.food_bank)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){ },icon: Icon(Icons.favorite)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.content_copy)), label: ""), 
                  BottomNavigationBarItem(icon: Icon_Button1(VoidCallback: (){},icon: Icon(Icons.headphones)), label: ""),  
                  // BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: ""),
              
                ],
              ),
            
          ),
        ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final Map<String, dynamic> food;

  FoodCard({required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(food['image'], fit: BoxFit.cover, width: double.infinity),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Icon(Icons.favorite_border, color: Colors.red),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(food['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${food['price'].toStringAsFixed(2)}",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                    Icon(Icons.chat_bubble_outline, size: 16),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}