// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/category_tile.dart';
import 'package:grocery_app/widgets/product_type.dart';

class categoriespage extends StatelessWidget {

  final List ProductType =[
    ['Vegetables',true],
    ['Fruits',false],
    ['Meat',false],
    ['Snacks',false],
    ['Drinks',false],
    ['Cleaning',false],
  ];
  void productTypeSelected (int index) {
     setState(){
      for(int i=0; i<ProductType.length; i++) {
        ProductType[i][1]=false;
      }
      ProductType[index][1]=true;
     }
  }
  categoriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor:  Color.fromRGBO(5, 52, 170, 0.824),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 25),
          child: Column(
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hey, Muhammad Siddique",style: TextStyle(color:Colors.white, fontSize: 25,fontWeight: FontWeight.bold),),
                  //search icon
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                       padding: const EdgeInsets.only(left:100),
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
                  //slide
                  Container(
                   height: 50,
                   child: ListView.builder(itemCount:ProductType.length,scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Product_Type(productType: ProductType[index][0],
                    isSelected:ProductType[index][1] ,
                    OnTap:() {
                      productTypeSelected(index);
                    });
                   },)
                  ),
                  SizedBox(height:20,),
                  Expanded(
                    child: ListView(
                      children: [
                        Categorytile(Imaagepath: 'assets/images1/vegetable.png',Categoryname:'Vegetables',CategoryDescription: 'Fresh From Lush Green Farms.',Price:'\$10 per kg '),
                        SizedBox(height:10),
                        Categorytile(Imaagepath: 'assets/images1/fruits.png',Categoryname: 'Fruits',CategoryDescription:'100% Fresh And Organic Fruits.',Price:'\$10 per kg '),
                        SizedBox(height:10),
                        Categorytile(Imaagepath: 'assets/images1/meat.png',Categoryname: 'Meat',CategoryDescription:'100% Halal and Orangic Meat.',Price:'\$18 per kg '),
                        SizedBox(height:10),
                        Categorytile(Imaagepath: 'assets/images1/snack.png',Categoryname: 'Snacks',CategoryDescription:'Combination of Spicy and Salty.',Price:'\$10'),
                        SizedBox(height: 10),
                        Categorytile(Imaagepath: 'assets/images1/drinks.png',Categoryname: 'Drinks',CategoryDescription:'Soft Drinks,Juices and Manymore.',Price:'\$10'),
                        SizedBox(height:10),
                        Categorytile(Imaagepath: 'assets/images1/cleaning.png',Categoryname: 'Cleaning',CategoryDescription:'All house Cleaning Items Available.',Price:'\$15 '),
                        SizedBox(height: 10),
                     ],
                    )
                    ),
                 


            ],
          ),
        ),

         
      )
    );
  }
}