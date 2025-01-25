import 'package:flutter/material.dart';
import 'package:my_portfolio/style/header_decoration.dart';
import 'package:my_portfolio/widgeds/name_of_portfolio.dart';

class HeaderMobile extends StatelessWidget {
  HeaderMobile({super.key,this.onmenutab});
  final VoidCallback? onmenutab;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: headerdecorations,
      child: Row(
        children: [
          NameOfPortfolio(),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed:onmenutab,
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
