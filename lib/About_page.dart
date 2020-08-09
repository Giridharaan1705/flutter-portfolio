import 'package:flutter/material.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.black,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
        Padding(padding:EdgeInsets.only(top:0,left:80),),
      
         Text("About",style:TextStyle(
          fontSize:45.0,
          color:Colors.white,
          fontWeight:FontWeight.bold,
          fontFamily: ("Poppins")

        ),),
        SizedBox(height: 30.0,),
      
       Padding(padding: EdgeInsets.only(left: 5,right: 5),),
        
       
        Text("Hi! Iam Giridharaan aspiring flutter developer who likes  designing 24*7 and I completed My Schooling in velammal matric higher sec school rather than technical skills I have Some of the non-technical skills too! Yes I like to play Games like Call of Duty and Sleeping dogs ,and I have some professionl skills like debating etc "
        ,style: TextStyle(
          fontSize:16.0,
          fontFamily: ("Poppins"),
          color: Colors.white70

        ),),  ]   ),
    );
  }
}