
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/custombottom.dart';
import 'package:grocery_app/widgets/customsalecard.dart';
import 'package:grocery_app/widgets/itemstile.dart';


class groceryhome1 extends StatelessWidget {
  const groceryhome1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
     backgroundColor: Color.fromRGBO(56, 97, 201, 0.827),
      bottomNavigationBar: BottomNavigation(),
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
                      SizedBox(width: 10,),
                      customsalecard(),
                       SizedBox(width: 10,),
                      customsalecard(),
                       SizedBox(width: 10,),
                      customsalecard(),
                       SizedBox(width: 10,),
                      customsalecard(),
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