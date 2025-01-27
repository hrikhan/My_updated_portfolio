import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileBodyPart extends StatelessWidget {
  const MobileBodyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.only(left: 20),
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.black, Colors.purple]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image
                      Row(
                        children: [
                          Container(
                            height: 200,
                            width: 150.w,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Container(
                              height: 120.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 5, color: Colors.white),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                  image: AssetImage("assets/IMG_9133.JPG"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                   SizedBox
                   (
                    height: 240,

                     child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           Text(
                                "Hey,",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 30,
                                ),
                              ),
                           Text(
                                "I am a\nFlutter developer ",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 30),
                              ),
                        Text(
                                "lets Build your application",
                                style:
                                    TextStyle(color: Colors.purple, fontSize: 20),
                              ),
                             ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.teal),
                                foregroundColor:
                                    WidgetStatePropertyAll(Colors.white)),
                          onPressed:(){},
                            child: Text("whatsapp")),
                            ]),
                   ),

                      //button
                      
                    ],
                  ),
                 
                ],
              ),
            );
  }
}