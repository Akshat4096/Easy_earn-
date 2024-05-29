import 'dart:math';

import 'package:easy_earn/Auth/Auth_services.dart';
import 'package:easy_earn/Screens/CreatePin_Screen.dart';
import 'package:easy_earn/Screens/Login_screen.dart';
import 'package:easy_earn/Screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp_Sc extends StatefulWidget {
  const SignUp_Sc({super.key});

  @override
  State<SignUp_Sc> createState() => _SignUp_ScState();
}

class _SignUp_ScState extends State<SignUp_Sc> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _userName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();


  @override
  void dispose(){
    _userName.dispose();
    _email.dispose();
    _password.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Center(
          child: Column(
            children:<Widget> [
              Container(
                height: MediaQuery.of(context).size.height/2.8,
                child:Column(
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){
                              Navigator.pop(context);
                        }, icon: Icon(
                          Icons.arrow_back_ios_new ,
                          color: Colors.black,
                        )) ,SizedBox(width: 50,),
                        Text('Create Account',style:
                        TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      ],
                    ) ,
                    SizedBox(height: 5,),
                    SvgPicture.asset(
                      'assets/signupimg.svg',
                      height: 230,
                      width: double.infinity,
                    )
                  ],
                ),
              ) ,
              Expanded(
                  child:Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )
                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              // SizedBox(height: 20,),
                              Material(
                                elevation: 3,
                                child: TextField(
                                  controller: _userName,
                                  decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.fromLTRB(30,10, 50, 10 ),
                                        child: Icon(
                                          Icons.person_outline,
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: 'User Name'
                                  ),
                                ),
                              ),SizedBox(height: 20,),
                              Material(
                                elevation: 3,
                                child: TextField(
                                  controller: _email,
                                  decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.fromLTRB(30,10, 50, 10 ),
                                        child: Icon(
                                          Icons.mail_outline,
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: 'E-mail'
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Material(
                                elevation: 3,
                                child: TextField(
                                  controller: _password,
                                  decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.fromLTRB(30,10, 50, 10 ),
                                        child: Icon(
                                          Icons.lock_outline,
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: 'Password'
                                  ),
                                ),
                              ) ,
                              SizedBox(height: 40),
                              ElevatedButton(onPressed: _signup,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(25, 12, 25, 12),
                                  child: Text('Sign Up'),
                                ) ,
                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                    shadowColor: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ) ,
                                    textStyle: TextStyle(
                                      fontSize: 18 ,

                                    )
                                ),

                              ) ,
                              SizedBox(height: 5,),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Already have an account ? ',style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold
                                    ),) ,
                                    TextButton(onPressed: (){
                                      Navigator.push(
                                          context,MaterialPageRoute(builder: (context) => Login_Sc(),) );
                                    }, child: Text('Login',style: TextStyle(decoration: TextDecoration.underline,
                                        decorationColor: Colors.black,
                                        decorationThickness: 3,
                                        fontWeight: FontWeight.bold ,fontSize: 15 , color: Colors.blue.shade900
                                    ),)) ,
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  )
              )
            ],
          ),
        ),
      ),
    );
  }

  void _signup() async{
    // String userName = _userName.text;
    String email = _email.text;
    String password = _password.text;
    // print("runnnnnnnnnnnnnnnnnnnnnnn");
    UserCredential? user = await _auth.SignUpWithEmailAndPassword(email, password);

    // print("hhhhhhhhhhhhh,${user!.user!.uid}") ;
    if(user!= null){
      print('User is successfully created');
      Navigator.push(context, MaterialPageRoute(builder: (context) => Createpin_sc(),
      ));
    } else{
      print('Some Error happen');
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Enter your details',style: TextStyle(fontSize: 20),),
              backgroundColor: Colors.red,
          ));
    }

  }

}
