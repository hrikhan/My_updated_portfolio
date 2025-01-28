import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/componants/header_button.dart';
import 'package:my_portfolio/componants/myitems.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/style/header_decoration.dart';
import 'package:my_portfolio/widgeds/desktop_skills.dart';
import 'package:my_portfolio/widgeds/laptop_body_part.dart';
import 'package:my_portfolio/widgeds/drawe.dart';
import 'package:my_portfolio/widgeds/header_desktop.dart';
import 'package:my_portfolio/widgeds/header_mobile.dart';
import 'package:my_portfolio/widgeds/mobile_body_part.dart';
import 'package:my_portfolio/widgeds/mobile_skills.dart';
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
            if (Constraints.maxWidth >= 600)
              BodyPart()
            else
              const MobileBodyPart(),
            //tittle of skills
            Container(
            
              padding: EdgeInsets.all(20),
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Text(
                  'My skils are',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

             // DesktopSkills(),
             MobileSkills(),

            
             //fotter
            Container(
              height: 500,
              color: Colors.brown,
              child: 
              //fotter,
              Center(
                child: Text(
                  'This is my portfolio',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
