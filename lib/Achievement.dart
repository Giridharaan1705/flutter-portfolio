import 'package:flutter/material.dart';
class Achievements extends StatefulWidget {
  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.black,
      body:ListView(
        children:<Widget>[
          Padding(padding: EdgeInsets.only(left: 40.0),
          child: Row(children: <Widget>[
            Text('Achievements',style: TextStyle(
              fontSize:35,
              fontFamily:('Poppins'),
              fontWeight: FontWeight.bold,
              color:Colors.white,
            
            ),)
          ],),
          ),
          SizedBox(height:90),
           Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget>[
                             Text("BEST PRESENTATION AWARD",style: TextStyle(
                               color:Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 17,

                             ),),
               Text("this award is presented to  the team recudex for executing a excellent startup  named Recudex in the stackathon 2.0 conducted by studymonk",
               style: TextStyle(color:Colors.white70,
                               fontWeight: FontWeight.bold,
                               fontSize: 13,
                              fontFamily: ("Poppins")
                             ),),
               SizedBox(height:90),
               Text("PEOPLE CHOICE AWARD",
               style: TextStyle(color:Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 17,

                             ),
               ),
               Text("this award is presented to the team ItzYours for executing a excellent startup named ItzYours in the stackathon conducted by Studymonk   ",
               style: TextStyle(color:Colors.white70,
                               fontWeight: FontWeight.bold,
                               fontSize: 13,
                              fontFamily: ("Poppins")
                             ),
                           
               ),
              ]
           ),
          
         )

      
        ]
      
      )
    
   );
  }
}