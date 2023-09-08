// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Categorytile extends StatelessWidget {
  const Categorytile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                     decoration:BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(12),
                     ),
                      child: Row(
                        children: [
                          //image of item
                          Image.asset('assets/images1/vegetable.png',height: 120,),
                          //name of Category
                        Padding(
                          padding: const EdgeInsets.only(left: 20,),
                          child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Text("Vegetables",style: TextStyle(color:Colors.white, fontSize: 50,fontWeight: FontWeight.bold,letterSpacing: 2),),
                                  SizedBox(height:2),
                                  Text("Fresh From Lush Green Farms",style: TextStyle(color:Colors.grey, fontSize: 20,fontWeight: FontWeight.w600,letterSpacing:1),),
                                  SizedBox(height: 15,),
                                  Text("Starting From",style: TextStyle(color:Colors.white, fontSize: 20,fontWeight: FontWeight.w500,letterSpacing:3),),
                                  SizedBox(height:5,),
                                  Text("\$40/KG",style: TextStyle(color:Colors.black, fontSize: 20,fontWeight: FontWeight.normal,letterSpacing: 5),),
                                ],
                              ),
                        ),
                          
                          //price of item
                          
                        ],
                      ),
                    );

                  
  }
}