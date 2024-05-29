
import 'package:easy_earn/components/StockDispaly.dart';
import 'package:easy_earn/models/Linechart_modal.dart';
import 'package:easy_earn/models/candle_modal.dart';
import 'package:easy_earn/models/taponstock_modal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:easy_earn/components/Navigationabar.dart';
import 'package:easy_earn/models/Sellall_modal.dart';

class Homepage_Sc extends StatefulWidget {
  const Homepage_Sc({super.key});

  @override
  State<Homepage_Sc> createState() => _Homepage_ScState();
}

class _Homepage_ScState extends State<Homepage_Sc> {

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0,2,0,0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Navigation_Cp(),
                  ),
                  Text('NIFTY 50',style: TextStyle(fontSize: 20),),
                  Text('24,8425.90',style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+13.00',style: TextStyle(fontSize: 15),),
                      Text('(+0.14%)',style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),

                    ],
                  ),

                  Container(
                      height: MediaQuery.of(context).size.height/3.5,
                      child: Candle_Sc()
                  ),
                ],
              ),
            ) ,
            Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
            ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Stocks',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(width: 160,),
                              Expanded(
                                child: TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Sellall_Modal(),));
                                }, child:Text('See All',style: TextStyle(fontSize: 20 ,color: Colors.black),)),
                              )
                            ],
                          ),
                      SizedBox(height: 5,),
                      StockDisplay(
                          Stock_name: 'AXISBANK',
                          Stock_type: 'NSE',
                          Stock_value: '2126.20',
                          Stock_PL: '+30.00',
                          Stock_percentage: '(+0.72%)',
                          Price_Color : Colors.green,
                          image: AssetImage('assets/axisimg.jpg') ,
                      ),
                      SizedBox(height: 10,),
                      StockDisplay(
                        Stock_name: 'SBIBANK',
                        Stock_type: 'NSE',
                        Stock_value: '1446.93',
                        Stock_PL: '+10.00',
                        Stock_percentage: '(+0.12%)',
                        Price_Color : Colors.green,
                        image: AssetImage('assets/sbiimg.jpg') ,
                      ),
                      SizedBox(height: 10,),

                      StockDisplay(
                        Stock_name: 'BOBBANK',
                        Stock_type: 'NSE',
                        Stock_value: '144.06',
                        Stock_PL: '-3.17',
                        Stock_percentage: '(-0.49%)',
                        Price_Color : Colors.red,
                        image: AssetImage('assets/bobimg.jpg') ,
                      ),
                      SizedBox(height: 10,),

                      StockDisplay(
                        Stock_name: 'ICICBANK',
                        Stock_type: 'BSE',
                        Stock_value: '1782.47',
                        Stock_PL: '+14.40',
                        Stock_percentage: '(+3.12%)',
                        Price_Color : Colors.green,
                        image: AssetImage('assets/icicimg.jpg') ,
                      ),
                      SizedBox(height: 30,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Active Stocks',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(width: 110,),
                          Expanded(
                              child: TextButton(
                                  onPressed: (){},
                                  child:Text(
                                    'See All',style: TextStyle(fontSize: 20),
                                  )
                              )
                          )
                        ],
                      ),
                      SizedBox(height: 10,),

                      StockDisplay(
                        Stock_name: 'ORIGIN24',
                        Stock_type: 'NSE',
                        Stock_value: '112.12',
                        Stock_PL: '-08.77',
                        Stock_percentage: '(-0.2%)',
                        Price_Color : Colors.red,
                        image: AssetImage('assets/o24img.jpg') ,
                      ),
                      SizedBox(height: 10,),

                      StockDisplay(
                        Stock_name: 'WINZOO',
                        Stock_type: 'NSE',
                        Stock_value: '2927.17',
                        Stock_PL: '+15.88',
                        Stock_percentage: '(+1.78%)',
                        Price_Color : Colors.green,
                        image: AssetImage('assets/wzimg.jpg') ,
                      ),

                      SizedBox(height: 10,),


                      StockDisplay(
                        Stock_name: 'BOABANK',
                        Stock_type: 'NSE',
                        Stock_value: '126.41',
                        Stock_PL: '+21.40',
                        Stock_percentage: '(+2.09%)',
                        Price_Color : Colors.green,
                        image: AssetImage('assets/boaimg.jpg') ,
                      ),

                      SizedBox(height: 10,),


                      StockDisplay(
                        Stock_name: 'ABBINDIA',
                        Stock_type: 'NSE',
                        Stock_value: '246.20',
                        Stock_PL: '-45.23',
                        Stock_percentage: '(-1.23%)',
                        Price_Color : Colors.red,
                        image: AssetImage('assets/abimg.jpg') ,
                      ),
                    ],
                  ),
                ) ,
              ),
          ]
        ),
      ),
    );
  }
}