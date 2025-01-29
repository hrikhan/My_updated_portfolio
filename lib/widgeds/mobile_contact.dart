import 'package:flutter/material.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white,Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                  
                      ),
                      borderRadius: BorderRadius.circular(20),
                  
                    ),
                    child: ConstrainedBox(constraints: BoxConstraints(maxWidth:MediaQuery.of(context).size.width*0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your name',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.black
                            ),
                      
                          ),
                          SizedBox(
                            height: 20,),

                           TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.black
                            ),
                      
                          ),
                          SizedBox(
                            height: 20,),
                          
                          
                           TextField(
                            decoration: InputDecoration(
                              hintText: 'comment',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.black
                            ),
                      
                          )

                        ],
                      ),
                    ),
                    )
                    
                  ),
                ),
              ],
            );
  }
}