import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{

  FirebaseAuth _auth = FirebaseAuth.instance ;

  Future<UserCredential?> SignUpWithEmailAndPassword(String Email, String Password) async{
    UserCredential? credential;
    try{
       credential = await _auth.createUserWithEmailAndPassword(email: Email, password: Password);
       FirebaseFirestore.instance.collection("users").doc().set({
         "email" : Email,
         "password" : Password,
         "createAt" : DateTime.now(),
       });
    }
    catch(e){

      print('Something went wrong!!');
    }
    return credential ;


  }

  Future<User?> SignInWithEmailAndPass(String Email, String Password) async{

    try{
      UserCredential _credential = await _auth.signInWithEmailAndPassword(email: Email, password: Password);
    }catch(e){
      print('Something went wrong!!');
    }
    return null;

  }

}