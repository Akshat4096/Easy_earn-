import 'package:flutter/material.dart';


class Pending_Tab extends StatefulWidget {
  const Pending_Tab({super.key});

  @override
  State<Pending_Tab> createState() => _Pending_TabState();
}

class _Pending_TabState extends State<Pending_Tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Container(
        // padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(20)
        ),
        child: Container(
          height: MediaQuery.of(context).size.height/1.62,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 80,),
                Image(
                  image: AssetImage('assets/pending.png'),
                  height: MediaQuery.of(context).size.height/3.5,
                  width: double.infinity,
                ),
                Text('You Have Not Placed Any Orders!'),
                SizedBox(height: 5,),
                Text('Go To The Watchlist', style: TextStyle(color: Colors.blue),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
