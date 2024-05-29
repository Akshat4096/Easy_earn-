import 'package:flutter/material.dart';


class Executed_Tab extends StatefulWidget {
  const Executed_Tab({super.key});

  @override
  State<Executed_Tab> createState() => _Executed_TabState();
}

class _Executed_TabState extends State<Executed_Tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body:  Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height/1.62,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade100
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red ,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 40,
                            child: Text('SELL'),
                          ) ,
                          Text("QTY:1",style: TextStyle(fontSize: 10),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2.4,
                          ) ,
                          Text('1mins ago',style: TextStyle(fontSize: 10),),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text('Complete'),
                          )
                        ],
                      ) ,
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('AXISBANK',style: TextStyle(fontSize: 12),),
                              Text('NSE',style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/4.8,),
                          Column(
                            children: [
                              Text('Order Price',style: TextStyle(fontSize: 12),),
                              Text('2126',style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height/10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('LPT',style: TextStyle(fontSize: 12),),
                              Text('2126.20',style: TextStyle(fontSize: 12),),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ) ,
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade100
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green ,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 40,
                            child: Text('Buy'),
                          ) ,
                          Text("QTY:1",style: TextStyle(fontSize: 10),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2.3,
                          ) ,
                          Text('1mins ago',style: TextStyle(fontSize: 10),),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text('Rejected'),
                          )
                        ],
                      ) ,
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('ICICBANK',style: TextStyle(fontSize: 12),),
                              Text('NSE',style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/4.8,),
                          Column(
                            children: [
                              Text('Order Price',style: TextStyle(fontSize: 12),),
                              Text('1456',style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height/10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('LPT',style: TextStyle(fontSize: 12),),
                              Text('1456.04',style: TextStyle(fontSize: 12),),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ) ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade100
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red ,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 40,
                            child: Text('SELL'),
                          ) ,
                          Text("QTY:1",style: TextStyle(fontSize: 10),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2.4,
                          ) ,
                          Text('1mins ago',style: TextStyle(fontSize: 10),),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text('Complete'),
                          )
                        ],
                      ) ,
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('BOBBANK',style: TextStyle(fontSize: 12),),
                              Text('NSE',style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/4.8,),
                          Column(
                            children: [
                              Text('Order Price',style: TextStyle(fontSize: 12),),
                              Text('477',style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height/10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('LPT',style: TextStyle(fontSize: 12),),
                              Text('477.13',style: TextStyle(fontSize: 12),),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
