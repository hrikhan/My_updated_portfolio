import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/componants/project.dart';
import 'package:my_portfolio/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/widgeds/desktop_contact.dart';

import 'package:my_portfolio/widgeds/drawe.dart';
import 'package:my_portfolio/widgeds/header_desktop.dart';
import 'package:my_portfolio/widgeds/header_mobile.dart';
import 'package:my_portfolio/widgeds/laptop_body_part.dart';
import 'package:my_portfolio/widgeds/mobile_body_part.dart';
import 'package:my_portfolio/widgeds/mobile_contact.dart';
import 'package:my_portfolio/widgeds/mobile_skills.dart';
import 'package:my_portfolio/widgeds/project.dart';

import '../widgeds/desktop_skills.dart';

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

            if (Constraints.maxWidth >= 600)
              DesktopSkills()
            else
              MobileSkills(),

            //  project
            Container(
              height: 80,
              child: const Center(
                child: Text(
                  'My Projects',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            //project

            Project(),
            SizedBox(
              height: 20,
            ),
            //contact
            Container(
              height: 50,
              child: const Center(
                child: Text(
                  'Contact Me',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            //contact
            Column(
              children: [
                if (Constraints.maxWidth >= 600)
                  DesktopContact()
                else
                  MobileContact(),
                ElevatedButton(onPressed: () {}, child: Text('submit'))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //fotter
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child:
                  //fotter,
                  const Center(
                child: Text(
                  'created by Hridoy\n             2025',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
