import 'package:flutter/material.dart';

import 'main_page.dart';
void main()=>runApp(MyApp());
@override
class MyApp extends StatelessWidget{
  Widget build (BuildContext context){
  return  new MaterialApp(
    home:new LoginPage(),
    theme:new ThemeData(
    primarySwatch: Colors.blue 
    )
  );
}
}
class LoginPage extends StatefulWidget{
 @override
 State createState()=>new LoginPageState();
}
class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  @override
  AnimationController _animationController;
  Animation <double> _animation;
   @override
    void initState(){
     super.initState();
     _animationController= new AnimationController(vsync: this,
     duration: new Duration(milliseconds: 500),
     );
     _animation=new CurvedAnimation(parent: _animationController, curve: Curves.easeOut);
     _animation.addListener(()=>this.setState(() { }));
     _animationController.forward();
         }
        Widget build(BuildContext context){
           return new Scaffold(
             backgroundColor: Colors.greenAccent,
             body: new Stack(
               fit: StackFit.expand,
               children: <Widget>[
                 new Image(
                   image: new AssetImage("images/img.jpeg"),
                   fit: BoxFit.cover,
                   color:Colors.black87,
                   colorBlendMode: BlendMode.darken,
                 ),
                 new Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     new Image(
                     image: new AssetImage("images/1.png"),
                     height: _animation.value*100,
                     
                     ),
                     new Form(
                       child:new Theme(
                         data:new ThemeData(
                           brightness:Brightness.dark,
                           primarySwatch: Colors.teal,
                           inputDecorationTheme: new InputDecorationTheme(
                             labelStyle:new TextStyle(
                               color:Colors.tealAccent,
                               fontSize:30.0
                             )
                           )


                         ),
                         child: new Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: <Widget>[
                             new Form(
                               child:new Column(
                                 children:<Widget>[
                               new TextFormField(
                                 decoration:new InputDecoration(
                                   hintText: "Enter my name"
                                 ),
                                 keyboardType: TextInputType.text,
                                 
                               ),
                  
                               new Padding(padding: const EdgeInsets.only(top: 40.0),),
                               new MaterialButton(
                                 onPressed:()=>{
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>Home (),) 
    )
    },
                                 splashColor:Colors.redAccent,
                                 color: Colors.teal,
                                 height: 40.0,
                                 minWidth: 100.0,
                                 textColor: Colors.white,
                                 child: Text("Go"),
                                 )
                                 ]
                             )
                             )
                                 
                           ],
                         ),
                       )
                     )
                   ],
                   )
               ],
             ),
           );
     
           
     
          }
      
     }
     
 
