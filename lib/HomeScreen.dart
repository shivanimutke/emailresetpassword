import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinkiponki/Loginscreen.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _HomeScreen();
  }

}

class _HomeScreen extends State<HomeScreen>{
  FirebaseAuth auth=FirebaseAuth.instance;
  Future<void> logOut() async{
     FirebaseUser user =auth.signOut() as FirebaseUser;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:Text("Home"),
        actions: <Widget>[
          FlatButton.icon(onPressed: (){
            logOut();
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (BuildContext context)=>LoginScreen()
            ));
          },
              icon: Icon(Icons.person),
              label: Text("Log out"))
        ],
      ),
    );
  }

}