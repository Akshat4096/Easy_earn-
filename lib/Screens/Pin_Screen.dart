import 'package:easy_earn/Screens/BottomNavi_modal.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class Pin_Sc extends StatefulWidget {
  const Pin_Sc({super.key});

  @override
  State<Pin_Sc> createState() => _Pin_ScState();
}

class _Pin_ScState extends State<Pin_Sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 5),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                      Navigator.pop(context);
                  }, icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  )),
                  SizedBox(width: 30,),
                  Text('Verification PIN',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ],
              ),
            ) ,
            SizedBox(height: 10,),
            Text('Please enter your PIN to Proceed',style: TextStyle(
              fontSize: 17,
            ),),
            SizedBox(height: 200,),
            Padding(padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                focusColor: Colors.green,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'Verify your pin'
              ),
            )
            ) ,
            Container(
              child: Center(
                child: IconButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavi_modal()),);
                },iconSize: 70,
                    icon: Icon(
                  Icons.arrow_circle_right_sharp,
                  color: Colors.green,
                )),
              ),
            ) ,
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('If You Forget Your PIN ?',style: TextStyle(fontSize: 17),),
                TextButton(onPressed: (){}, child: Text(
                  'Reset PIN',style: TextStyle(fontSize: 17),
                ))
              ],
            ),


          ],
        ),
      ),
    );
  }
}
