import 'package:flutter/material.dart';

class NameOfPortfolio extends StatelessWidget {
  NameOfPortfolio({super.key, this.ontap});
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text("Hridoy",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            Text(
              " khan",
              style: TextStyle(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
