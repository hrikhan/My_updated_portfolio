import 'package:flutter/material.dart';
import 'package:my_portfolio/componants/myitems.dart';

class MobileSkills extends StatelessWidget {
MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return 
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(60),
                  height: 400,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                          
                ),
                Positioned(
                  top: 10,
                  
                  child:    Container(
                    padding: EdgeInsets.all(20),
                height: 320,
                width: 280,
                child: Card(
                  color: Colors.grey,
                  elevation: 5,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                     
                          children: [
                            Column(
                children: [
                  Image.asset(items[0]['image'], width: 100, height: 100),
                  Text(items[0]['title'], textAlign: TextAlign.center),
                ],
                            ),
                            SizedBox(width: 10), // Adds space between columns
                            Column(
                children: [
                  Image.asset(items[1]['image'], width: 100, height: 100),
                  Text(items[1]['title'], textAlign: TextAlign.center),
                ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10), // Adds space between rows
                        Row(
                          
                          children: [
                            Column(
                children: [
                  Image.asset(items[2]['image'], width: 100, height: 100),
                  Text(items[2]['title'], textAlign: TextAlign.center),
                ],
                            ),
                            SizedBox(width: 10), // Adds space between columns
                 Column(
                  children: [
                    Image.asset(items[3]['image'], width: 100, height: 100),
                    Text(items[3]['title'], textAlign: TextAlign.center),
                  ],
                
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              
                )
              
            ),
            Positioned(
  top: 300,
  left: 10,
   // Responsive left position
  child: ConstrainedBox(
    constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width * 0.3, // Responsive width
    ),
    child: Wrap(
      alignment: WrapAlignment.center, // Centers the Chips
      spacing: 8,
      runSpacing: 10, // Adds spacing

      children: [
        for (int i = 0; i < skills.length; i++)
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.black,
              child: Image.asset(skills[i]['percentage']),
            ),
            label: Text(skills[i]['title']),
            backgroundColor: Colors.black,
          ),
      ],
    ),
  ),
)


                   
              ]
              
              
              )    ;
  }
}