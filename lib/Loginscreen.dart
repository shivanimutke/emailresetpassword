/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinkiponki/SignUp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      //change column to listview

      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 180,
            // color: Colors.pink,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "welcome to our store",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(150)),
              color: Colors.pink,
            ),
          ),
          Theme(
              data: ThemeData(
                hintColor: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                  ),
                ),
              )),
          Theme(
              data: ThemeData(
                hintColor: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 25, right: 20, left: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
                width: double.infinity,
                child: InkWell(
                  child: Text(
                    "forget Password",
                    style: TextStyle(color: Colors.cyanAccent, fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.pink,
                child: Text(
                  "log in",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                padding: EdgeInsets.all(10),
              )),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.blue,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: <Widget>[
                  //we need to import
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.pink,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "sign in with google",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: <Widget>[
                  //we need to import
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "sign in with facebook",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Center(
              child: Column(
            children: <Widget>[
              Text(
                "Dont have account ?",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => SignUp()));
                },
                child: Text(
                  "Sign In ",
                  style: TextStyle(color: Colors.cyanAccent, fontSize: 20),
                ),
              ),
              Container(
                width: 45,
                height: 50,
                color: Colors.black,
              )
            ],
          ))
        ],
      ),
    );
  }
}

*/
/*

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinkiponki/HomeScreen.dart';
import 'package:pinkiponki/SignUp.dart';
import 'package:pinkiponki/ForgetScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  String email='',password='';
  var _formKey=GlobalKey<FormState>();

   FirebaseAuth auth=FirebaseAuth.instance;

  Future<String> logIn() async{

    String user=(await auth.signInWithEmailAndPassword(
        email: email.trim(), password: password)).toString();

    return user;
    //Navigator.push(context,MaterialPageRoute(
    // builder: (BuildContext context)=> HomeScreen()
    // ));
  }

  @override
  void initState(){
    super.initState();
    Future( () async{
      if(await auth.currentUser()!=null){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder:(BuildContext context)=>HomeScreen()
        ));
      }
    }

    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      //change column to listview

      body:Form(
      key: _formKey,
      child:ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 180,
            // color: Colors.pink,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "welcome to our store",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(150)),
              color: Colors.pink,
            ),
          ),
          Theme(
              data: ThemeData(
                hintColor: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                child: TextFormField(
                  autofocus: true,
                  validator: (value){
                    if(value.isEmpty){
                      return "please enter valid email";
                    }else{
                      email=value;
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                  ),
                ),
              )),
          Theme(
              data: ThemeData(
                hintColor: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 25, right: 20, left: 20),
                child: TextFormField(
                  obscureText: true,
                    autocorrect: false,
                    autofocus: true,
                    validator: (value){
                      if(value.isEmpty){
                           return "please enter valid email";
                      }else{
                            password=value;
                       }
                           return null;
                     },

                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.pink, width: 1)),
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
                width: double.infinity,
                child: InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=>ForgetScreen()));
                  },
                  child:
                  Text(
                    "forget Password",
                    style: TextStyle(color: Colors.cyanAccent, fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: RaisedButton(
                onPressed: () {
                  if(_formKey.currentState.validate()) {
                    Future<String> check = logIn();
                    if (check != null) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()
                      ));
                    }
                  }
                  /*
                  if(_formKey.CurrentState.validate()){
                    Future<String> Check = logIn();
                    if(check!=null){
                      Navigator.pushReplacement( Context,MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen()
                      ));
                    }
                  }
                */},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.pink,
                child: Text(
                  "log in",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                padding: EdgeInsets.all(10),
              )),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.blue,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: <Widget>[
                  //we need to import
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.pink,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "sign in with google",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: <Widget>[
                  //we need to import
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "sign in with facebook",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "Dont have account ?",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignUp()));
                    },
                    child: Text(
                      "Sign In ",
                      style: TextStyle(color: Colors.cyanAccent, fontSize: 20),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 50,
                    color: Colors.black,
                  )
                ],
              ))
        ],
      )
      ),
    );
  }
}

*/



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinkiponki/HomeScreen.dart';
import 'package:pinkiponki/SignUp.dart';
import 'package:pinkiponki/ForgetScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:pinkiponki/authentication.dart';
import 'package:pinkiponki/http_exception.dart';


import 'authentication.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {


  var _formKey=GlobalKey<FormState>();
  String email='',password='';


 // String email='',password='';


  FirebaseAuth auth=FirebaseAuth.instance;


  Future<String> logIn() async{

    String user=(await auth.signInWithEmailAndPassword(
        email: email.trim(), password: password)).toString();

    return user;
    //Navigator.push(context,MaterialPageRoute(
    // builder: (BuildContext context)=> HomeScreen()
    // ));
  }

  Map<String, String> _authData = {
    'email' : '',
    'password': ''
  };

  void _showErrorDialog(String msg)
  {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('An Error Occured'),
          content: Text(msg),
          actions: <Widget>[
            FlatButton(
              child: Text('Okay'),
              onPressed: (){
                Navigator.of(ctx).pop();
              },
            )
          ],
        )
    );
  }

  Future<void> _submit() async
  {
    if(!_formKey.currentState.validate())
    {
      return;
    }
    _formKey.currentState.save();

    try{
      await Provider.of<Authentication>(context, listen: false).logIn(
          _authData['email'],
          _authData['password']
      );
      //Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      Navigator.push(context,MaterialPageRoute(
           builder: (BuildContext context)=> HomeScreen()));

    } catch (error)
    {
      var errorMessage = 'Authentication Failed. Please try again later.';
      _showErrorDialog(errorMessage);
    }

  }

  @override
  void initState(){
    super.initState();
    Future( () async{
      if(await auth.currentUser()!=null){
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder:(BuildContext context)=>HomeScreen()
        ));
      }
    }

    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      //change column to listview

      body:Form(
          key: _formKey,
          child:ListView(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 180,
                // color: Colors.pink,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "welcome to our store",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(150)),
                  color: Colors.pink,
                ),
              ),
              Theme(
                  data: ThemeData(
                    hintColor: Colors.blue,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                    child: TextFormField(
                      autofocus: true,
                      validator: (value){
                        if(value.isEmpty){
                          return "please enter valid email";
                        }else{
                          email=value;
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink, width: 1)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink, width: 1)),
                      ),
                    ),
                  )),
              Theme(
                  data: ThemeData(
                    hintColor: Colors.blue,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 25, right: 20, left: 20),
                    child: TextFormField(
                      obscureText: true,
                      autocorrect: false,
                      autofocus: true,
                      validator: (value){
                        if(value.isEmpty){
                          return "please enter valid email";
                        }else{
                          password=value;
                        }
                        return null;
                      },

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink, width: 1)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink, width: 1)),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Container(
                    width: double.infinity,
                    child: InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=>ForgetScreen()));
                      },
                      child:
                      Text(
                        "forget Password",
                        style: TextStyle(color: Colors.cyanAccent, fontSize: 20),
                        textAlign: TextAlign.right,
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: RaisedButton(
                    onPressed: () {

                      if(_formKey.currentState.validate()) {
                        Future<String> check = logIn();
                        //Future<String> check = _submit();

                        if (check != null) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen()
                          ));
                        }

                      }

                     // logIn();
                      /*
                  if(_formKey.CurrentState.validate()){
                    Future<String> Check = logIn();
                    if(check!=null){
                      Navigator.pushReplacement( Context,MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen()
                      ));
                    }
                  }
                */},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.pink,
                    child: Text(
                      "log in",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    padding: EdgeInsets.all(10),
                  )),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.blue,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: <Widget>[
                      //we need to import
                      Icon(
                        FontAwesomeIcons.google,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "sign in with google",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: <Widget>[
                      //we need to import
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "sign in with facebook",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Dont have account ?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (BuildContext context) => SignUp()));
                        },
                        child: Text(
                          "Sign In ",
                          style: TextStyle(color: Colors.cyanAccent, fontSize: 20),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 50,
                        color: Colors.black,
                      )
                    ],
                  ))
            ],
          )
      ),
    );
  }
}