import 'package:flutter/material.dart';

class itemtiles extends StatelessWidget {
  const itemtiles({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount:6,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,childAspectRatio: 1),scrollDirection: Axis.vertical,
                    itemBuilder:(context,index){
                      return Container(
                       
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey),
                            
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              ClipRRect(child: Builder(
                                builder: (context) {
                                  return Center(child: Icon(Icons.image_outlined,size:80,color: Colors.white38,));
                                }
                              )),
                              Text('Vegetables',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Text("Fresh And Green",style:TextStyle(fontSize:10,color: Colors.black),),
                              SizedBox(height:1,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("\$4.00",style: TextStyle(fontSize:20),),
                                  Container(
                                  decoration:BoxDecoration(color: Colors.orange,borderRadius:BorderRadius.circular(12),),
                                  child: Icon(Icons.add)),
                                ],
                              )  
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    
      );
    
  }
}