import 'package:flutter/material.dart';

import '../Screens/Login_screen.dart';
import '../Screens/SignUp_Screen.dart';

class Login_Btn extends StatelessWidget {
  const Login_Btn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don`t have an account ? ',style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold
          ),) ,
          TextButton(onPressed: (){
            SignUp(context);
          }, child: Text('Sign Up',style: TextStyle(decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              decorationThickness: 3,
              fontWeight: FontWeight.bold ,fontSize: 17 , color: Colors.blue.shade900
          ),)) ,
        ],
      ),
    );
  }
  void SignUp(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp_Sc(),));
  }
}
