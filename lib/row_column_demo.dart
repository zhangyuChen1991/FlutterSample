import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RowColumnPage"),
      ),
      body: Center(
        child: Text(
          "你正在查看：RowColumnPage",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
