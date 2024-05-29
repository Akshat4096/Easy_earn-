
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_earn/Screens/Login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Confirmpin_Sc extends StatefulWidget {
  const Confirmpin_Sc({super.key});

  @override
  State<Confirmpin_Sc> createState() => _Confirmpin_ScState();
}

class _Confirmpin_ScState extends State<Confirmpin_Sc> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController _confirmpin = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10,10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    )),
                    SizedBox(width: 50,),
                    Text('Confirm PIN',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                  ],
                ) ,
                SizedBox(height: 10,),
                Text('Repeat a PIN code to continue',style: TextStyle(
                  fontSize: 17,
                ),),
                SizedBox(height: 200,),
                Padding(padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextField(
                      controller: _confirmpin,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          focusColor: Colors.green,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: 'Confirm your pin'
                      ),
                    )
                ) ,
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: IconButton(onPressed:(){
                      String pin = _confirmpin.text;
                      _verifypin(pin, context);
                  }, icon: Icon(
                    Icons.arrow_circle_right_sharp,
                    color: Colors.green,
                    size: 80,
                  )),
                ) ,
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _verifypin(String pin , BuildContext context) async{
    User? user = _auth.currentUser;

    if(user!=null){
      DocumentSnapshot documentSnapshot = await
      _firestore.collection('users').doc(user.uid).get();

      if(documentSnapshot.exists){
        String storedPin = documentSnapshot.get('pin');
        if( pin ==storedPin ){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Sc(),));
        } else{
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Incorrect Pin , Please Try Again.')),
          );
        }
      }
    }


  }
}
