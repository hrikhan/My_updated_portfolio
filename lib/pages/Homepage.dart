import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/componants/header_button.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/style/header_decoration.dart';
import 'package:my_portfolio/widgeds/laptop_body_part.dart';
import 'package:my_portfolio/widgeds/drawe.dart';
import 'package:my_portfolio/widgeds/header_desktop.dart';
import 'package:my_portfolio/widgeds/header_mobile.dart';
import 'package:my_portfolio/widgeds/name_of_portfolio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      return Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.blueGrey,
        endDrawer: Constraints.maxWidth >= 600 ? null : Drawe(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (Constraints.maxWidth >= 600)
              const HeaderDesktop()
            else
              HeaderMobile(
                onmenutab: () {
                  scaffoldkey.currentState?.openEndDrawer();
                },
              ),
            //body
            //BodyPart(),
            Container(
              padding: EdgeInsets.only(left: 60),
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.black, Colors.purple]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  Container(
                    height: 300,
                    width: 150.w,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Container(
                      height: 120.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          
                          color: Colors.white),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/IMG_9133.JPG"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
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
                 ] )

//
                ],
              ),
            ),
            Container(
              height: 500,
            ),
            //fotter
            Container(
              height: 500,
              color: Colors.brown,
            ),
          ],
        ),
      );
    });
  }
}
