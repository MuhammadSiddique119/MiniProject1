// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/category_tile.dart';
import 'package:grocery_app/widgets/custombottom.dart';

class categoriespage extends StatelessWidget {
  const categoriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Color.fromRGBO(56, 97, 201, 0.827),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 25),
          child: Column(
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hey, Halal",style: TextStyle(color:Colors.white, fontSize: 25,fontWeight: FontWeight.bold),),
                  //search icon
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                       padding: const EdgeInsets.only(left: 200),
                        child: Icon(Icons.search,
                        color: Colors.white
                        ),
                       ),
                     ),
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
                  Container(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text("Shop",style: TextStyle(color:Colors.white, fontSize: 50,fontWeight: FontWeight.w300,letterSpacing:3),),
                    ],
                   ),
                  ),
                  SizedBox(height:10),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("By Category",style: TextStyle(color:Colors.white, fontSize: 50,fontWeight: FontWeight.bold,letterSpacing:3),),
                      ],
                    ),
                  ),
                  SizedBox(height:30),
                  Expanded(
                    child: ListView(
                      children: [
                        Categorytile(),
                        SizedBox(height:10),
                        Categorytile(),
                        SizedBox(height:10),
                        Categorytile(),
                        SizedBox(height:10),
                        Categorytile(),
                        SizedBox(height: 10),
                        Categorytile(),
                        SizedBox(height:10),
                        Categorytile(),
                        SizedBox(height: 10),
                      ],
                    )),
                 


            ],
          ),
        ),

         
      )
    );
  }
}