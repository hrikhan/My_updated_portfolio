import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyPart extends StatelessWidget {
  BodyPart({super.key, this.linkdin, this.whatsapp_ontap});
  final VoidCallback? whatsapp_ontap;
  final VoidCallback? linkdin;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      height: 500,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Colors.purple,
          ]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hey,",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                      ),
                    ),
                    const Text(
                      "I am a Flutter developer ",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    const Text(
                      "lets Build your application",
                      style: TextStyle(color: Colors.purple, fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.teal),
                                foregroundColor:
                                    WidgetStatePropertyAll(Colors.white)),
                            onPressed: whatsapp_ontap,
                            child: Text("whatsapp")),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.blue),
                                foregroundColor:
                                    WidgetStatePropertyAll(Colors.white)),
                            onPressed: linkdin,
                            child: Text("LinkedIn"))
                      ],
                    )
                  ],
                ),
                Spacer(),
                Container(
                    height: 300,
                    width: 100.w,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Container(
                      height: 120.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/IMG_9133.JPG"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
