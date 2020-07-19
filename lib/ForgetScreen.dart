import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgetScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _ForgetScreen();
  }

}

class _ForgetScreen extends State<ForgetScreen>{
  String email=" ";
  var _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("forget password", style:TextStyle(color: Colors.cyanAccent),),backgroundColor: Colors.pinkAccent,),
      body: Center(
        child: Padding(padding: EdgeInsets.only(top: 50,left: 20,right: 20),
         
          child:Form(

          key: _formKey,
          child: Column(
           children: <Widget>[
             Text("We will mail you a link....please cliked on it to reset password",
             style: TextStyle(color: Colors.white,backgroundColor: Colors.white12,
             fontSize: 20),

             ),

             Theme(
                 data: ThemeData(
                   hintColor: Colors.cyanAccent,
                 ),
                 //child: Padding(
                   //padding: EdgeInsets.only(top: 50, right: 20, left: 20),
               child:Padding(padding: EdgeInsets.only(top: 30),
                   child:TextFormField(
                     validator: (value){
                       if(value.isEmpty){
                         return "please enter value valid mail";
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
                           borderSide: BorderSide(color: Colors.white, width: 1)),
                       disabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15),
                           borderSide: BorderSide(color: Colors.white, width: 1)),
                       enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15),
                           borderSide: BorderSide(color: Colors.yellowAccent, width: 1)),
                       focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15),
                           borderSide: BorderSide(color: Colors.cyanAccent, width: 1)),
                     ),
                   ),
                 ),
             ),

          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: RaisedButton(
              onPressed: () {
                if(_formKey.currentState.validate()) {
                  
                  FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value)=>print("check your mail"));
                  
                  /*
                  Future<String> check = logIn();
                  if (check != null) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen()
                    ));
                  }*/
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
              color: Colors.yellowAccent,
              child: Text(
                "Send email",
                style: TextStyle(
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              padding: EdgeInsets.all(10),
            )
    )
           ],
          ),
         ),
        
      ),
    )
    );
  }

}