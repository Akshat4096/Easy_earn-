import 'package:easy_earn/Screens/BottomNavi_modal.dart';
import 'package:easy_earn/components/Navigationabar.dart';
import 'package:easy_earn/components/StockDispaly.dart';
import 'package:easy_earn/models/taponstock_modal.dart';
import 'package:flutter/material.dart';

class Sellall_Modal extends StatefulWidget {
  const Sellall_Modal({super.key});

  @override
  State<Sellall_Modal> createState() => _Sellall_ModalState();
}

class _Sellall_ModalState extends State<Sellall_Modal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0,2,0,0),
        child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // BottomNavi_modal(),
              Container(
                height: MediaQuery.of(context).size.height/7.8,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                      child: Navigation_Cp(),
                    ),
                  ],
                ),
              ) ,
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1.3,
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
                            padding: const EdgeInsets.all(20.0),
                            child: Text('All Stocks',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),

                      StockDisplay(
                        Stock_name: 'TCS-SERVICE',
                        Stock_type: 'NSE',
                        Stock_value: '744.56',
                        Stock_PL: '+45.65',
                        Stock_percentage: '(+4.78%)',
                        Price_Color : Colors.green,
                        image: AssetImage('assets/tcsimg.jpg') ,
                      ),

                      SizedBox(height: 10,),

                      StockDisplay(
                        Stock_name: 'RELIANCE',
                        Stock_type: 'NSE',
                        Stock_value: '532.88',
                        Stock_PL: '+56.23',
                        Stock_percentage: '(+4.19%)',
                        Price_Color : Colors.green,
                        image: AssetImage('assets/relianceimg.jpg') ,
                      ),

                      SizedBox(height: 10,),


                      StockDisplay(
                        Stock_name: 'ADANI-LTD',
                        Stock_type: 'NSE',
                        Stock_value: '326.20',
                        Stock_PL: '-31.21',
                        Stock_percentage: '(-3.22%)',
                        Price_Color : Colors.red,
                        image: AssetImage('assets/adaniimg.jpg') ,
                      ),

                      SizedBox(height: 10,),
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
