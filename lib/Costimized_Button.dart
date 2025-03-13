import "package:flutter/material.dart";

class Icon_Button1 extends StatelessWidget {
  final VoidCallback; 
  final icon;
  Color color;
  Icon_Button1({this.VoidCallback , this.icon,this.color=Colors.white});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: VoidCallback, icon: icon,color:color,padding: EdgeInsets.all(0), );
  }
}


class Text_button extends StatelessWidget {
   Text_button({this.VoidCallback,this.text});
   final VoidCallback;
   String? text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: VoidCallback,
      child: Text(text!),
    );
  }
}

