//import 'dart:ffi';

import 'package:flutter/material.dart';

class Product_Type extends StatelessWidget {
  final String productType;
  final bool isSelected;
  final VoidCallback OnTap;
  
  Product_Type({super.key,  required this.productType, required this.isSelected, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Padding(
        padding: const EdgeInsets.only(left:8),
        child: Container(
          height:20,width:110,
          decoration: BoxDecoration(color: isSelected ? Colors.orange :Colors.white,borderRadius: BorderRadius.circular(25)),
          child: Center(child: Text(productType,style:TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black),      )),
          )),
    );
    
  }
}