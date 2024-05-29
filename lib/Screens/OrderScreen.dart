import 'package:easy_earn/components/Navigationabar.dart';
import 'package:flutter/material.dart';
import 'package:easy_earn/Screens/Tabs/Pending_Tab.dart';
import 'package:easy_earn/Screens/Tabs/Executed_Tab.dart';
class Order_Sc extends StatefulWidget {
  const Order_Sc({super.key});

  @override
  State<Order_Sc> createState() => _Order_ScState();
}

class _Order_ScState extends State<Order_Sc> with SingleTickerProviderStateMixin  {

  late TabController _tabController;
  late Widget selectedTabContent;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 100),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.blue.shade200,
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Executed'),
            ],
          ),
          actions: [
            Container(
              padding: EdgeInsets.fromLTRB(0,10,5,5),
               height: 60,
               width: MediaQuery.of(context).size.width/1.0,
               child: Navigation_Cp(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue.shade200,
      body:TabBarView(
        controller: _tabController,
        children: [
          Pending_Tab(),
          Executed_Tab()
        ],
      ),
    );
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
}

