import 'package:flutter/material.dart';

class GridViewPageX extends StatelessWidget {
  const GridViewPageX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridVie.count 0x111701" )),
      body: GridView.count(
        crossAxisCount: 2, // 一行几个
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.orange),
        ],
      ),
    );
  }
}
