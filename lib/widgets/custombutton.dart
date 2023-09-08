
import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const custombutton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,borderRadius: BorderRadius.circular(40)),
          padding:EdgeInsets.all(20),
         child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(text,style: TextStyle(color: Colors.black,fontSize: 25),),
             SizedBox(width: 10,),
             Icon(Icons.arrow_forward_ios_sharp,color: Colors.black),
           ],
           
         )
           ),
    );
    
  }
}