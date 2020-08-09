import 'package:flutter/material.dart';
import 'package:login/skills.dart';

import 'About_page.dart';
import 'Achievement.dart';

class Home extends StatefulWidget{
  @override
  _MyHomepagestate createState()=> _MyHomepagestate();
}

class _MyHomepagestate extends State<Home>{
  int CurrentIndex=1;
  getCurrentpage(){
   switch (CurrentIndex){
     case 1:
     return About();
     break;
   }
    switch (CurrentIndex){
     case 2:
     return Skills();
     break;
   }
    switch (CurrentIndex){
     case 3:
     return Achievements();
     break;
   }
  }
  setCurrentIndex (int index){
    setState((){
      CurrentIndex=index;
    });
    Navigator.of(context).pop();
  }
  @override
  Widget build (BuildContext context){
    return  Scaffold(
        drawer:Drawer(
          child:Column(
            children: <Widget>[
            Container(
              padding:EdgeInsets.only(top:40.0,left:20),
              height:250,
              width:double.infinity,
              color:Colors.black,
              child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children:<Widget>[
                
              Icon(
                Icons.account_circle,
                size: 80.0,
                color: Colors.white,
              ),
              SizedBox(height: 30,),
            Text("Giridharaan.V",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
               
            ),),
            Text("giridharaanv@gmail.com",style: TextStyle(
              fontSize:15.0,
              color:Colors.white70
            )),
              ],)),
            ListTile(
              selected: CurrentIndex ==1 ? true:false,
              onTap: (){
                setCurrentIndex(1);
              },
              leading:Icon(Icons.face) ,
              title:Text("About"),
            ),
            ListTile(
                selected: CurrentIndex ==2 ? true:false,
               onTap: (){
                 setCurrentIndex(2);
               },
              leading:Icon(Icons.perm_identity) ,
               
              title:Text("Skills"),
            ),
            ListTile(
                selected: CurrentIndex ==3 ? true:false,
               onTap: (){
                 setCurrentIndex(3);
               },
              leading:Icon(Icons.tag_faces) ,
    
              title:Text("Achievements"),
            )
             ] )
    ),
    appBar: AppBar(
      title:Text("PORTFOLIO",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white)),
      backgroundColor: Colors.black,),
      body: getCurrentpage (),
    );
      
    
  }

}