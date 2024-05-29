
import 'package:easy_earn/Screens/Login_screen.dart';
import 'package:easy_earn/Screens/SignUp_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_earn/components/Login_btn.dart';
import 'package:flutter/material.dart';


import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

import 'Notification/Notification_services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyCmKASwNnQpCESjyGHHx49eEqdg-5Byx1E',
        appId: 'easy-earn-app-2b7fe',
        messagingSenderId: 'messagingSenderId',
        projectId: 'peasy-earn-app-2b7fe'
    ),
  );
  // FirebaseMessaging.onBackgroundMessage(PushNotificationService.backgroundHandler);
  final dynamicLinkParams = DynamicLinkParameters(
    link: Uri.parse("https://com.example.easy_earn/"),
    uriPrefix: "https://easyearnakshat.page.link",
    androidParameters: const AndroidParameters(packageName: "com.example.easy_earn"),
    iosParameters: const IOSParameters(bundleId: "com.example.easyEarn"),
  );
  final dynamicLink = await FirebaseDynamicLinks.instance.buildLink(dynamicLinkParams);
  print('this is our dynamic link for flutter project${dynamicLink}');
  runApp(Myapp()) ;
}

void handleDynamicLinks() async {
  FirebaseDynamicLinks.instance.onLink;
}

class Myapp extends StatelessWidget {
  Myapp({super.key});

  User? user ;

  void initState(){
    user = FirebaseAuth.instance.currentUser;
  }
  final PushNotificationService _notificationService = PushNotificationService();
  @override
  Widget build(BuildContext context) {
    _notificationService.initialize();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: <Color>[
                  Colors.blue.shade700,
                  Colors.blue.shade100,
                  Colors.blue.shade100,
                  Colors.blue.shade300,
                ]
              )
            ),
            child: Splashpage()
        ),
      ),
    );
  }
}

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 180, 0, 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    // padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    child: SvgPicture.asset(
                      'assets/logoimg.svg',
                      height: 230,
                      width: double.infinity,
                    ),
                ),
                    Text('Welcome to',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('Easy-Earn',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
        SizedBox(height: 100,),
        ElevatedButton(onPressed: (){
          Navigator.push(
              context,MaterialPageRoute(builder: (context) => Login_Sc(),) );
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

              )
          ),

        ) ,
        SizedBox(height: 5,),
        Login_Btn()
      ],
    );
  }
}
