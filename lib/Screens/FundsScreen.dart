import "package:flutter/material.dart" ;

    class FundsScreen extends StatefulWidget {
      const FundsScreen({super.key});

      @override
      State<FundsScreen> createState() => _FundsScreenState();
    }

    class _FundsScreenState extends State<FundsScreen> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35) , bottomRight: Radius.circular(35))
                ),
                height: MediaQuery.of(context).size.height/3.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Funds",style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
                    SizedBox(height: 2,),
                    Text("(Cash + Collateral)",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ) ,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:15),
                    child: Text("Available margin",style: TextStyle(fontSize: 20),),
                  ),
                  Text('2856.45',style: TextStyle(fontSize: 24, color: Colors.blue.shade200),),
                  Divider(
                    height: 20,
                    color: Colors.grey,
                  ) ,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Opening Balance",style: TextStyle(fontSize: 18),),
                        Text('2439',style: TextStyle(fontSize: 20 ,color: Colors.blue.shade200),) ,
                        Text("Payin",style: TextStyle(fontSize: 18),),
                        Text('0',style: TextStyle(fontSize: 20 ,color: Colors.blue.shade200),) ,
                        Text("Delivery Margin",style: TextStyle(fontSize: 18),),
                        Text('0.00',style: TextStyle(fontSize: 20 ,color: Colors.blue.shade200),) ,
                        Text("Option Primum",style: TextStyle(fontSize: 18),),
                        Text('0.00',style: TextStyle(fontSize: 20 ,color: Colors.blue.shade200),) ,
                        Divider(
                          height: 30,
                          color: Colors.grey,
                        ),
                        Text("Total Collateral",style: TextStyle(fontSize: 18),),
                        Text('0.00',style: TextStyle(fontSize: 20 ,color: Colors.blue.shade200),) ,
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(

                              child: ElevatedButton(onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                                  child: Text('Add Funds',style: TextStyle(color: Colors.black),),
                                ) ,
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shadowColor: Colors.green,
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
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: ElevatedButton(onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 12, 10, 12),
                                  child: Text('Withdraw',style: TextStyle(color: Colors.black),),
                                ) ,
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue.shade200,
                                    shadowColor: Colors.blue,
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
                  )
                ],
                ),
              ),
            ],
          ),
        );
      }
    }
