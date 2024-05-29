import 'package:flutter/material.dart';


class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {

  bool selectAll = false;
  List<bool> isSelected = [false, false, false, false];


  Widget _buildFilterContainer(String label, int index) {
    return InkWell(
      onTap: () {
        // Perform action when a filter container is tapped
        setState(() {
          isSelected[index] = !isSelected[index];
        });
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            if (isSelected[index])
              CircleAvatar(
                radius: 13,
                backgroundColor: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Filter',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        TextButton(
                          child: Text('Done',style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey
                          ),),
                          onPressed: () {
                            // Perform action when done button is tapped
                            Navigator.pop(context); // Close the bottom sheet
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Perform action when Select All button is tapped
                            setState(() {
                              selectAll = true;
                              isSelected = [true, true, true, true];
                            });
                          },
                          child: Text('Select All'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Perform action when Clear All button is tapped
                            setState(() {
                              selectAll = false;
                              isSelected = [false, false, false, false];
                            });
                          },
                          child: Text('Clear All'),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        children: [
                          _buildFilterContainer('NSE', 0),
                          _buildFilterContainer('BSE', 1),
                          _buildFilterContainer('Alphabetically', 2),
                          _buildFilterContainer('Last Traded Price', 3),
                        ],
                      ),
                    ),
                  ],
                ),
       ),
            );
  }
}
