// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_app/groceryyhome1.dart';
import 'package:grocery_app/widgets/custombottom.dart';
import 'package:grocery_app/widgets/custombutton.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(56, 97, 201, 0.827),
      body:Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height:25),
            Text('Grocery kart',
            style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.cyanAccent),),
            Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10,right: 10),
                child:Image.asset('assets/images1/shopping-cart.png',)
                ),
                SizedBox(height:10),
                //title
                Text("Your Everyday Grocery Partner.🛍️",
                style:TextStyle(fontSize:45,
                color:Colors.white,height: 1)
                ),
                SizedBox(height:5),
              //subtitle            
              Text("There's something for everyone to enjoy with grocery kart.",
              style: TextStyle(fontSize: 25,
              color: Colors.grey,height: 1),
              ),
              SizedBox(height:40,),
              custombutton(text:'Get Started',
              onTap:(){
                //go to groceryhome1
                Navigator.push(context,MaterialPageRoute(builder:(context)=>BottomNavigation()));
              },)
             
          ],
        ),
      )
      );
  }
}