import 'package:easy_earn/Screens/Razorpay.dart';
import 'package:easy_earn/models/Linechart_modal.dart';
import 'package:easy_earn/models/candle_modal.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';


class Taponstocks extends StatefulWidget {
  const Taponstocks({super.key});

  @override
  State<Taponstocks> createState() => _TaponstocksState();
}

class _TaponstocksState extends State<Taponstocks> {
    Widget currentWid = Linechart_Sc();

    void changeWid(Widget newWid){
      setState(() {
        currentWid = newWid;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (){
                      Navigator.pop(context);
                    }, icon:Icon(
                      Icons.arrow_back_ios_new_outlined, size: 20,color: Colors.black,
                    )
                    ) ,
                    SizedBox(width: 30,),
                    Text('CHARTS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ) ,
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade200
                ),
                child: Row(
                  children: [
                    Container(
                      // padding:EdgeInsets.fromLTRB(2,1,5,2),
                      child: Image(image: AssetImage('assets/axisimg.jpg'),
                        height: 40,
                        width: 60,
                      ),
                    ),
                    // SizedBox(width: 5,),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('AXISBANK',style: TextStyle(fontSize: 17),),
                            SizedBox(height: 2,),
                            Text('NSE',style: TextStyle(fontSize: 14),)
                          ],
                        ),
                      ),
                    ) ,
                    SizedBox(width: MediaQuery.of(context).size.height/11,),
                    Expanded(
                      child: Container(

                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:[
                              Text('2126.20  ',style: TextStyle(color: Colors.green,fontSize: 15),) ,
                              SizedBox(height: 5,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('+30.00',style: TextStyle(fontSize: 13),),
                                  Text('(+0.72%)',style: TextStyle(fontSize: 13,color: Colors.green),),
                                ],
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 70,
              color: Colors.black,
              thickness: 1,
              indent : 10,
              endIndent : 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12
                    ),
                    child: IconButton(
                      onPressed: () => changeWid(Candle_Sc()),
                      icon: Icon(
                        Icons.candlestick_chart_outlined,
                        size: 30,
                        color: Colors.blue
                        ,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      color:Colors.black12
                    ),
                    child: IconButton(
                      onPressed: () => changeWid(Linechart_Sc()),
                      icon: Icon(
                        Icons.auto_graph,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              ),
            SizedBox(height: 20,),
            Container(
              height: 350,
              child: currentWid,
            ) ,
            Divider(
              height: 70,
              color: Colors.black,
              thickness: 1,
              indent : 10,
              endIndent : 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => payment_razorpay(),)) ;
                  },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                      child: Text('Buy'),
                    ) ,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                        shadowColor: Colors.blueAccent,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                        textStyle: TextStyle(
                          fontSize: 18 ,

                        )
                    ),
                  ),
                ) ,
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: ElevatedButton(onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                      child: Text('Sell'),
                    ) ,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                        shadowColor: Colors.red,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                        textStyle: TextStyle(
                          fontSize: 18 ,

                        )
                    ),

                  ),
                ) ,
              ],
            )
          ],
        ),
      ),
    );
  }
}
