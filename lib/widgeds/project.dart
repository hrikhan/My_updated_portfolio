import 'package:flutter/material.dart';
import 'package:my_portfolio/componants/project.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return    ConstrainedBox(constraints: BoxConstraints(maxWidth:MediaQuery.of(context).size.width*0.2),
            
            child: Center(
              child: Wrap(
                 children: [
              for (var i = 0; i < project.length; i++)
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                child:
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(project[i]['image'],
                        fit: BoxFit.cover,
                        ),
                        
                       
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(project[i]['name'],),
                      SizedBox(
                        height: 10,
                      ),
                   InkWell(
                  child: Icon(Icons.download),
                   )
                    ],
                  ),
                )
                
              )
                ],),
            )
          );
  }
}