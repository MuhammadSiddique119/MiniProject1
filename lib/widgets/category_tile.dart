// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class Categorytile extends StatelessWidget {
  final String Imaagepath;
  final String Categoryname;
  final String CategoryDescription;
  final String Price; 

  Categorytile({ required this.Imaagepath, 
  required this.Categoryname, 
  required this.CategoryDescription, 
  required this.Price});

  @override
  Widget build(BuildContext context) {
    return  Container(
                     decoration:BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(20),
                     ),
                      child: Row(
                        children: [
                          //image of item
                          Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: Image.asset(Imaagepath,height: 100,),
                          ),
                          //name of Category
                        Padding(
                          padding: const EdgeInsets.only(left:33,bottom:10),
                          child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Text(Categoryname,style: TextStyle(color:Colors.black, fontSize: 50,fontWeight: FontWeight.w400,letterSpacing:1),),
                                  SizedBox(height:10),
                                  Text(CategoryDescription,style: TextStyle(color:Colors.black, fontSize: 20,fontWeight: FontWeight.w600,),),
                                  SizedBox(height: 10,),
                                  Text("Starting From",style: TextStyle(color:Colors.black, fontSize: 20,fontWeight: FontWeight.w500,letterSpacing:3),),
                                  SizedBox(height:5,),
                                  Text(Price,style: TextStyle(color:Colors.black, fontSize: 20,fontWeight: FontWeight.normal,letterSpacing:2),),
                                ],
                              ),
                        ),
                          
                        ],
                      ),
                    );

                  
  }
}