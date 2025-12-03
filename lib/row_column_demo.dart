import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RowColumnPage")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Column 0x1101"),
          Column(
            children: [
              Container(
                width: 200,
                height: 50,
                color: Color.fromARGB(255, 202, 5, 28),
              ),
              Container(
                width: 200,
                height: 50,
                color: Color.fromARGB(255, 67, 5, 202),
              ),
              Container(
                width: 200,
                height: 50,
                color: Color.fromARGB(255, 186, 223, 19),
              ),
            ],
          ),

          SizedBox(height:50),

          Text("Row 0x1102"),
          Row(
            children: [
              Container(
                width: 50,
                height: 200,
                color: Color.fromARGB(255, 202, 5, 28),
              ),
              Container(
                width: 50,
                height: 200,
                color: Color.fromARGB(255, 67, 5, 202),
              ),
              Container(
                width: 50,
                height: 200,
                color: Color.fromARGB(255, 186, 223, 19),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
