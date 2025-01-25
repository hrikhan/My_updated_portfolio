import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/Homepage.dart';
void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Hridoy",
      home: Homepage(),
    );
  }
}
