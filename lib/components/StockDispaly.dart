import 'dart:ui';

import 'package:easy_earn/models/taponstock_modal.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StockDisplay extends StatelessWidget{

  final AssetImage image ;
  final String Stock_name ;
  final String Stock_type ;
  final String Stock_value;
  final String Stock_PL ;
  final String Stock_percentage;
  final Color Price_Color ;

  StockDisplay(
      { required this.Stock_name,
        required this.Stock_type,
        required this.Stock_value,
        required this.Stock_percentage,
        required this.Stock_PL,
        required this.image,
        required this.Price_Color,
      }
      );


  @override
  Widget build(BuildContext context){
    return  InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Taponstocks(),));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.blue.shade100,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
          height: 65, // Adjust as needed
          width: double.infinity,
          child: Row(
            children: [
              Image(
                image: this.image,
                height: 40,
                width: 60,
              ),
              SizedBox(width: 10), // Adjust as needed
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.Stock_name,
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(height: 2),
                    Text(
                      Stock_type,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5), // Adjust as needed
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      this.Stock_value,
                      style: TextStyle(color: this.Price_Color, fontSize: 15),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(this.Stock_PL, style: TextStyle(fontSize: 10)),
                        Text(this.Stock_percentage, style: TextStyle(fontSize: 10, color: this.Price_Color)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ) ;
  }

}

