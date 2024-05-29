import 'package:easy_earn/Screens/SignUp_Screen.dart';
import 'package:easy_earn/components/Login_btn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Pin_Screen.dart';

class Login_Sc extends StatefulWidget {
  const Login_Sc({super.key});

  @override
  State<Login_Sc> createState() => _Login_ScState();
}

class _Login_ScState extends State<Login_Sc> {
  bool? value = false;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.lightBlueAccent,
        body : Padding(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Center(
            child: Column(
              children:<Widget> [
                Container(
                  height: MediaQuery.of(context).size.height /2.5,
                  child: Column(
                    children :<Widget> [
                Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),) ,
                  SizedBox(height: 30,),
                SvgPicture.asset(
                 'assets/loginimg.svg',
                   height: 230,
                  width: double.infinity,
                ) ,],
                ),
                ) ,
                Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )
                      ),
                      child: SingleChildScrollView(
                        child: Form(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Material(
                                  elevation: 3,
                                  child: TextField(
                                    controller: _email,
                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.fromLTRB(30,10, 50, 10 ),
                                        child: Icon(
                                          Icons.email_outlined ,
                                          color: Colors.black,

                                        ),
                                      ),
                                      hintText: 'E-mail',
                                    ),
                                  ),
                                ) ,
                                SizedBox(height: 40,),
                                Material(
                                  elevation: 3,
                                  child: TextField(
                                    controller: _password,
                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.fromLTRB(30,10, 50, 10 ),
                                        child: Icon(
                                          Icons.lock_open ,
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: 'Password',
                                    ),
                                  ),
                                ) ,
                                SizedBox(height: 5,),
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                      activeColor: Colors.blue,
                                        value: this.value,
                                        onChanged: (bool? value){
                                          setState(()=> this.value = value!);
                                        },
                                    ) ,
                                    Text('Remember me',style: TextStyle(fontSize: 15),),
                                    SizedBox(width: MediaQuery.of(context).size.width/19,),
                                    TextButton(onPressed: (){}, child: Text(
                                      'Forget Password?' ,style: TextStyle(
                                      fontSize: 15,
                                    ),
                                    )) ,
                                  ],
                                ) ,
                                SizedBox(
                                  height: 40,
                                ) ,

                                ElevatedButton(onPressed: () {
                                   _login();
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(40, 12, 40, 12),
                                    child: Text('Login'),
                                  ) ,
                                  style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.blueAccent,
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ) ,
                                      textStyle: TextStyle(
                                        fontSize: 18 ,
                                        color: Colors.black
                                      )
                                  ),

                                ) ,
                                SizedBox(height: 5,),
                                Login_Btn()

                              ],
                            ),
                          ),
                        ),
                      )
                    )
                )
              ],
            ),
          ),
        )
    );
  }

  Future<void> _login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      );
      // Navigate to the next screen on successful login
      Navigator.push(
          context,MaterialPageRoute(builder: (context) => Pin_Sc()) );
    } catch (e) {
      // Handle login failures
      print('Login failed: $e');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login Failed',style: TextStyle(fontSize: 20),),
          backgroundColor: Colors.red,
          ));
      // You can show an error message to the user
    }
  }

}
