import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/custombutton.dart';
class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color.fromRGBO(56, 97, 201, 0.827),
        body:PageView.builder(
          itemBuilder: (context, index) {
          return Container(
                padding: EdgeInsets.all(50),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children:[
                      Container(
                        child: Text("Your Holiday Shopping Delivered to Screen one 🛍️ ",
                        style: TextStyle(fontSize: 45,
                        color:Colors.white)
                        ),
                        padding: EdgeInsets.only(bottom: 5), 
                        ),
                        Container(
                          child: Text("There's something everyone to enjoy with sweeet shop.",
                          style: TextStyle(fontSize: 25,
                          color: Colors.grey),
                          ),
                          padding: EdgeInsets.only(bottom: 100),
                          ),
                        Center(
                          child: Container(
                              child: Icon(Icons.image,size: 200,color: Colors.blueGrey,),
                              padding: const EdgeInsets.only(bottom: 90),
                            ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.9,
                          child:custombutton(buttonText:'Get Started', onTap: () { },),
                        ),
                        
                      ]
                  ),
                );
          },
          itemCount: 2,
          scrollDirection: Axis.horizontal,
         
        ),
      ),
    );
  }
}