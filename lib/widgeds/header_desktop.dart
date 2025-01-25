import 'package:flutter/material.dart';
import 'package:my_portfolio/componants/header_button.dart';
import 'package:my_portfolio/style/header_decoration.dart';
import 'package:my_portfolio/widgeds/name_of_portfolio.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 60,
            margin: const EdgeInsets.all(10),
            decoration:headerdecorations,
            child: Row(
              children: [
                 NameOfPortfolio(),
                const Spacer(),
                for (int i = 0; i < headerbuttons.length; i++)
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        headerbuttons[i],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w100),
                      )),
              ],
            ),
          );
  }
}