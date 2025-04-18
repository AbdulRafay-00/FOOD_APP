

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(Text_Field());
}


class Icon_Button extends StatelessWidget {
  final VoidCallback; 
  final icon;
  const Icon_Button(this.VoidCallback , this.icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: VoidCallback, icon: icon,color: Color(0xFFE95322));
  }
}




class Text_Field extends StatefulWidget {
  String ? hintText;
  TextEditingController? controller=TextEditingController();
  Icon? icon;
  bool obscureText;
  Text_Field({  this.controller, this.hintText,this.icon, this.obscureText=false});
  @override
  State<Text_Field> createState() {
    // TODO: implement createState
    return Text_Field_State();
  }

}



class Text_Field_State extends State<Text_Field>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

        return 
       TextField(
        obscureText : widget.obscureText,
        controller: widget.controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(243, 240, 223, 163),

              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(15) ,
              ),
              hintText: widget.hintText,
              suffixIcon:widget.icon,
              
            ),
          );
  
       
  }

}


//Text Theme
class Text_Theme extends StatelessWidget {
  const Text_Theme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge:  TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1 )
        )
      )    );
  }
}




// Elevated Button
class Elevted_Button extends StatelessWidget{
  String? text;
   final  VoidCallback;
  

  Elevted_Button({required this.text,required this.VoidCallback});
  @override 
  Widget build(BuildContext context){
    return ElevatedButton(onPressed: VoidCallback,
                 style: ElevatedButton.styleFrom(
                  fixedSize: Size(207, 45),
                  backgroundColor: Color(0xFFE95322)
                 ),
                 
                 child:Text(text!,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 30))
                 , 
                 ); 

  }
}







// Navigation Bar
class Navigation_Bar extends StatelessWidget {
  final icon;
  String? label="";
   Navigation_Bar({this.icon, this.label});
   @override
  Widget build(BuildContext context) {
    return Scaffold( bottomNavigationBar: ClipRRect(
      
      borderRadius: BorderRadius.only(
        
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
       child: BottomNavigationBar(

        iconSize: 30,
         type: BottomNavigationBarType.fixed, 
         backgroundColor: Color(0xFFE95322),

         items: [
           BottomNavigationBarItem(icon: icon, label: label),
         
         ],
       ),
     ),
    );
  }
}
    
    
