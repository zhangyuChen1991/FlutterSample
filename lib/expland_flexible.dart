import 'package:flutter/material.dart';

class ExplandFlexiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ExplandFlexiblePage")),
      body: Column(
        //高度是整个屏幕
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Expanded 0x1103"), //Expanded = 占用剩余空间

          Expanded(
            //高度是整个屏幕被同层其他子控件占完后剩余的空间
            child: Column(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.red)),
                Expanded(flex: 2, child: Container(color: Colors.green)),
                Expanded(flex: 3, child: Container(color: Colors.blue)),
              ],
            ),
          ),

          SizedBox(height: 50),

          Text("Flexible 0x1105"),

          Container(
            height: 50,
            child: Column(
              children: [
                Flexible(child: Container(color: Colors.red)),
                Flexible(child: Container(color: Colors.green)),
              ],
            ),
          ),

          SizedBox(height: 50),

          Text("Flexible 0x1106"),

          Container(
            height: 50,
            child: Row(
              children: [
                Flexible(child: Container(height: 200, color: Colors.red)),
                Flexible(child: Container(color: Colors.green)),
              ],
            ),
          ),

          SizedBox(height: 50),
          Text("Flexible 0x1107"),
          Container(
            height: 50,
            child: Column(
              children: [
                Flexible(flex: 1, child: Container(color: Colors.red)),
                Flexible(flex: 2, child: Container(color: Colors.green)),
              ],
            ),
          ),

          SizedBox(height: 50),
          Text("Flexible 0x1108"),
          Container(
            height: 50,
            child: Row(
              children: [
                Flexible(flex: 1, child: Container(color: Colors.red)),
                Flexible(flex: 2, child: Container(color: Colors.green)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
