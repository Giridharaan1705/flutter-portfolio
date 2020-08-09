import 'package:flutter/material.dart';
class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.black,
      body:ListView(
        children:<Widget>[
          Padding(padding: EdgeInsets.only(left: 40.0),
          child: Row(children: <Widget>[
            Text('Skills',style: TextStyle(
              fontSize:30,
              fontFamily:('Poppins'),
              fontWeight: FontWeight.bold,
              color:Colors.white,
            
            ),)
          ],),
          ),
          SizedBox(height:80),
           Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget>[
                             Text("Technical-Skills",style: TextStyle(
                               color:Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 19,

                             ),),
               Text("Front-end-Developement(WEB)",
               style: TextStyle(color:Colors.white70,
                               fontWeight: FontWeight.bold,
                               fontSize: 15,

                             ),),
                   Text("Mobile-App-Development(Flutter)",
               style: TextStyle(color:Colors.white70,
                               fontWeight: FontWeight.bold,
                               fontSize: 15,

                             ),),
                    Text("Poster Designing",
               style: TextStyle(color:Colors.white70,
                               fontWeight: FontWeight.bold,
                               fontSize: 15,

                             ),),
               SizedBox(height:90),
               Text("Non-Technical-Skills",
               style: TextStyle(color:Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 19,

                             ),
               ),
               Text(" Public Speaking  ",
               style: TextStyle(color:Colors.white70,
                               fontWeight: FontWeight.bold,
                               fontSize: 15,

                             ),
                           
               ),
                   Text("Discipline-Habbit-Building",
               style: TextStyle(color:Colors.white70,
                               fontWeight: FontWeight.bold,
                               fontSize: 15,

                             ),),
                        Text("Marketing-skills",
               style: TextStyle(color:Colors.white70,
                               fontWeight: FontWeight.bold,
                               fontSize: 15,

                             ),),
              ]
           ),
          
         )

      
        ]
      
      )
    
   );
 

  }
}