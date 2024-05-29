import 'package:flutter/material.dart';
import 'package:easy_earn/components/filterSheet.dart';
class Navigation_Cp extends StatefulWidget {
      const Navigation_Cp({super.key});

      @override
      State<Navigation_Cp> createState() => _Navigation_CpState();
    }


    class _Navigation_CpState extends State<Navigation_Cp> {

      final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

      @override
      Widget build(BuildContext context) {
        return Row(
          key: _scaffoldKey,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: (){
            }, icon: Icon(
              Icons.menu_sharp,
              color: Colors.black,
              size: 30,
            )) ,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        suffixIcon: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: InkWell(
                            onTap: (){
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) => FilterSheet(),
                              //     )
                              // );
                              _showFilterSheet(context);
                            },
                            child: Icon(
                              Icons.bar_chart,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Icon(
                              Icons.search_sharp,
                              color: Colors.black,
                          ),
                        ) ,
                        hintText: 'Search anything'
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      }
      void _showFilterSheet(BuildContext context) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
                child: FilterSheet()); // Replace with your FilterSheet widget
          },
        );
      }

    }
