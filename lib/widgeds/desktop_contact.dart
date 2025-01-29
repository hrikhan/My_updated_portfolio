import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 300,
                  
                  
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white30,
                  child: Column(
                    
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         SizedBox(
                            height: 70,
                            width: 170.w,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                         ),
                         SizedBox(
                            height: 70,
                            width: 170.w,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'email',
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                         ),
                        
                      
                         
                        
                  
                         
                        ],
                      )
                      ,
                         Container(
                            height: 200,
                            width: 290.w,
                            child: TextField(
                                maxLines: 10,
                              maxLength: 200,
                  
                              decoration: InputDecoration(
                                hintText: 'description',
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                
                                ),
                            
                              ),
                            ),)
                    ],
                  ),

                ),
              );
  }
}