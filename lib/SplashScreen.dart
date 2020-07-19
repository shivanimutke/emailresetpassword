/*import 'package:flutter/cupertino.dart';zero
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
    // TODO: implement build
    //throw UnimplementedError();
  }



}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var mainAxisAlignment;
    return Scaffold(
      backgroundColor: Color(0Xff000725),
      body: Center(
        child: Column(
          children: <Widget>[
            mainAxisAlignment: MainAxisAlignment.center,
             childeren:widget[
               Expanded(
                 flex:2,
                 child:Column(
                 children:widget[
                   MyImage();
                 ],
               ),
               ),
             ],

          ],
        ),
      ),
    );
    // TODO: implement build
    //throw UnimplementedError();
  }

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return null;
  }

}

*/

/*one
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _SplashScreen();
  }

}

class _SplashScreen extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyImage(),
                  Text(
                    "Scarves Store",style:TextStyle(fontSize: 25
                  ,fontStyle: FontStyle.italic,color: Colors.pink,),
                  )
                ],
              ),
            ),
            Expanded(
              flex:2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(height: 20,),
                  Text('online store for every one',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 12,
                        color:Colors.white),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }

}

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    AssetImage image=new AssetImage("images/nike.jfif");
    Image logo =new Image(image:image,width:70,height: 70,);
    return logo;
  }

}

*/


import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinkiponki/Loginscreen.dart';
class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _SplashScreen();
  }

}

class _SplashScreen extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MyImage(),
                    Text(
                      "Scarves Store",style:TextStyle(fontSize: 25
                      ,fontStyle: FontStyle.italic,color: Colors.pink,),
                    )
                  ],
                ),
              ),
              Expanded(
                flex:2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(height: 20,),
                    Text('online store for every one',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                          color:Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }

  //first we need to navigate to log in screen

void NavigateToLogin(){
    Timer(Duration(seconds: 5),()=>Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context)=>LoginScreen())
    ));

}
@override
void initState(){
    super.initState();
    NavigateToLogin();
}

}

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    AssetImage image=new AssetImage("images/nike.jfif");
    Image logo =new Image(image:image,width:70,height: 70,);
    return logo;
  }

}
