

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/customsalecard.dart';
import 'package:grocery_app/widgets/itemstile.dart';


class groceryhome1 extends StatelessWidget {
  const groceryhome1({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
     backgroundColor: Color.fromRGBO(56, 97, 201, 0.827),
    
        body:  Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hey, Halal",style: TextStyle(color:Colors.white, fontSize: 25,fontWeight: FontWeight.bold),),
                      //nofitcation Icon 
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                       child: Icon(Icons.shopping_bag_outlined,
                        color: Colors.white
                        ),
                     ),
                    ],
                  ),
                  SizedBox(height: 30),
                  //search bar in below container
                  Container(
                    decoration: BoxDecoration(color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(25)),
                    padding:EdgeInsets.all(12),
                    child: const Row(
                      children:[
                        Icon(Icons.search,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Search Products or Store", style:TextStyle(color: Colors.grey)),
                      ],
                    )
                  ),
                  SizedBox(height: 30),
                  Container(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivered TO",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        Text("WITHIN",style: TextStyle(color: Colors.grey,fontSize: 15)),
                        
                      ],
                    )
                  ),
                  SizedBox(height:2),
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gulshan-e-Hadeed,karachi",style: TextStyle(color: Colors.white,fontSize: 15)),
                        Text("  1 Hour",style: TextStyle(color: Colors.white,fontSize: 15))
                      ],
                      ),
                  ),
                  //salecards
                  SizedBox(height:25),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                      SizedBox(width: 25),
                      customsalecard(
                        text1: 'Get', text2: '10% OFF',text3: 'On First Order.',Color: Colors.cyan,
                      ),
                       SizedBox(width: 10,),
                      customsalecard(
                        text1: 'Get',text2: "20% OFF On",text3: "All Grocery Items.",Color: Colors.blueGrey,
                      ),
                       SizedBox(width: 10,),
                      customsalecard(
                        text1:'Get' ,text2:'A Chance to Win' ,text3: 'Free Membership By Spending 100 Dollars.',Color:Colors.lightBlue,
                      ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Container(
                        child: Text("Recommended",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600),),
                      ),
                    ],
                  ),
              SizedBox(height:20),
                    Expanded( 
                          child:Container(
                          
                            child: itemtiles(),
                          )
                            
                          
                        )
                        
                   
            
                    ],
                  ),
            ),
        ),
    );
  }
}
