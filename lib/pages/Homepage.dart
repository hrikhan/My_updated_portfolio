import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/componants/header_button.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/style/header_decoration.dart';
import 'package:my_portfolio/widgeds/drawe.dart';
import 'package:my_portfolio/widgeds/header_desktop.dart';
import 'package:my_portfolio/widgeds/header_mobile.dart';
import 'package:my_portfolio/widgeds/name_of_portfolio.dart';

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
        endDrawer:Constraints.maxWidth >= 600?null: Drawe(),
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
            //progect
            Container(
              padding: EdgeInsets.only(left: 40,right: 40),
              height: 500,
              decoration:const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black,
                  Colors.purple,
                  
                ]),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20))
              ),
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
                            Text(
                              "Hey,",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "I am a Flutter developer ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                            Text(
                              "lets Explore my contibution ",
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 25),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: Text("whatsapp")),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("LinkedIn"))
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          height: 300,
                          width: ,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(400)),
                          ),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(200)),
                              child: Image.asset('assets/IMG_9133.JPG',
                                  fit: BoxFit.contain)),
                        )
                      ],
                    ),
                  ),
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
