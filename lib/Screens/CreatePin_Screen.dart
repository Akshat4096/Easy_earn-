import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_earn/Auth/Auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ConfirmPin_Screen.dart';

class Createpin_sc extends StatefulWidget {
  const Createpin_sc({super.key});

  @override
  State<Createpin_sc> createState() => _Createpin_scState();
}

class _Createpin_scState extends State<Createpin_sc> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController _createpin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    )),
                    SizedBox(width: 30,),
                    Text('Create a PIN', style: TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Text('Enhance the security of your account by', style: TextStyle(
                    fontSize: 17,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Text('creating a PIN code', style: TextStyle(
                    fontSize: 17,
                  ),),
                ),
                SizedBox(height: 200,),
                Padding(padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextField(
                      controller: _createpin,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          focusColor: Colors.green,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: 'Enter Your PIN'
                      ),
                    )
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: IconButton(onPressed: () {
                    String pin = _createpin.text;
                    _setupPin(pin);

                  }, icon: Icon(
                    Icons.arrow_circle_right_sharp,
                    color: Colors.green,
                    size: 80,
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _setupPin(String pin) async {
    User? user = _auth.currentUser;

    if(user!=null){
      await _firestore.collection('user').doc(user.uid).set({
        'pin' : pin,
      });
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => Confirmpin_Sc(),));
  }
}


