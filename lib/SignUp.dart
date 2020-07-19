import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinkiponki/Loginscreen.dart';
import 'package:pinkiponki/HomeScreen.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _SignUp();
  }

}

class _SignUp extends State<SignUp>{

  String email="",password="";

  var _formKey=GlobalKey<FormState>();

  FirebaseAuth auth=FirebaseAuth.instance;

  Future<void> register() async{

    FirebaseUser user=(await auth.createUserWithEmailAndPassword(
        email: email.trim(), password: password)) as FirebaseUser;
    //Navigator.push(context,MaterialPageRoute(
     // builder: (BuildContext context)=> HomeScreen()
   // ));
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      //change column to listview

      body: Form(
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
                    "Sign Up",
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
                  validator: (value){
                    if(value.isEmpty){
                      return "please enter user name";
                    }return null;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "username",
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
                padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value.isEmpty){
                      return "please enter valid email ";
                    }else{
                      email=value;
                    }
                    return null;
                  },
/*
                  onSaved:(value){
                    email=value;
                  },*/


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
                padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                child: TextFormField(
                  obscureText: true,
                  autocorrect: false,
                  validator: (value){
                    if(value.isEmpty){
                      return "please enter password ";
                    }else if(value.length <= 8){
                      return "password should be less than or eqal to 8 charchater";
                    }else{
                      password=value;
                    }
                    return null;
                  },
/*
                  onSaved: (value){
                    password=value;
                  },
*/

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
        /* Theme(
              data: ThemeData(
                hintColor: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 25, right: 20, left: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "confirm password",
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
              )
          ),
        */
          /*
          Padding(

            padding:EdgeInsets.only(right: 20 ),
            child:Container(
              width: double.infinity,
              child: Text("forget Password",style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 20),
                textAlign: TextAlign.right,),
            ),),*/

          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left:20,right: 20),
              child: RaisedButton(
                onPressed: () {
                  if(_formKey.currentState.validate()){
                   // Navigator.push(context,MaterialPageRoute(
                     //   builder: (BuildContext context)=>HomeScreen(),

                    //));
                    register();
                    Navigator.push(context,MaterialPageRoute(
                     builder: (BuildContext context)=> HomeScreen()
                     ));
                  }
                },
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Colors.pink,
                child: Text(
                  "Sign in",
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

          Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: RaisedButton(onPressed: (){},
              color:Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                children: <Widget>[
                  //we need to import
                  Icon(FontAwesomeIcons.google,color: Colors.pink,),
                  SizedBox(width: 10,),
                  Text("sign in with google",style: TextStyle(
                      fontSize: 20,color: Colors.black
                  ),)
                ],
              ),

            ),
          ),

          Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: RaisedButton(onPressed: (){},
              color:Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                children: <Widget>[
                  //we need to import
                  Icon(FontAwesomeIcons.facebook,color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text("sign in with facebook",style: TextStyle(
                      fontSize: 20,color: Colors.black
                  ),)
                ],
              ),

            ),
          ),

          SizedBox(width: 10,),

          Center(
              child:Column(
                children: <Widget>[
                  Text("Already have account",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),

                  SizedBox(height: 10,),

                  FlatButton(onPressed:(){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (BuildContext context)=>LoginScreen())
                    );
                  },
                    child:Text("Login by Email ",style: TextStyle(color: Colors.cyanAccent,fontSize: 20),),
                  ),



                  Container(
                    width: 45,
                    height: 50,
                    color: Colors.black,
                  )
                ],
              )

          )
        ],
        )
      ),
    );
  }

}