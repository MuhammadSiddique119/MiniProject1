
import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  const custombutton({super.key, required this.buttonText,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
      
        decoration: ShapeDecoration(
            color: Colors.white,
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12))),
       child:Center(child: Text(buttonText,style: TextStyle(fontSize: 22),)),
         ),
    );
  }
}