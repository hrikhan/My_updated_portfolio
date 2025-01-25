import 'package:flutter/material.dart';
import 'package:my_portfolio/componants/header_button.dart';

class Drawe extends StatelessWidget {
  const Drawe({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.purple, 
        child: ListView(
          children: [
            for (int i = 0; i <headerbuttons.length;i++)
            ListTile(
              leading: Icon(buttons[i]),
              title: Text(headerbuttons[i],style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w100),),
              onTap: () {},
            )
          ],
        )
      );
  }
}