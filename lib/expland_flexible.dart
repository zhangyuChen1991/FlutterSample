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
          Text("Expanded 0x11031"), //Expanded = 占用剩余空间

          SizedBox(
            height: 100,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.red),
                ), //flex 权重
                Expanded(flex: 2, child: Container(color: Colors.green)),
                Expanded(flex: 3, child: Container(color: Colors.blue)),
              ],
            ),
          ),

          Text("Expanded 0x11032"),
          SizedBox(height: 50),

          SizedBox(
            height: 100,
            child: Column(
              children: [
                Expanded(
                  child: Container(color: Colors.red),
                ), //Expanded会默认占满剩余空间，即100-20=80高度
                Container(color: Colors.blue, height: 20),
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
            width: 200,
            child: Row(
              children: [
                //下面两个flexible，默认 fit: loose，flex:1，所以每个最多分100
                Flexible(
                  child: Container(height: 200, width: 50, color: Colors.red),//最多分到100，但是自己只要50，所以实际长度是50
                ),
                Flexible(child: Container(color: Colors.green)),//最多分到100，自己没有要求尺寸，撑满100，实际尺寸100
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 200,
            child: Row(
              //下面两个flexible，默认 fit: loose，flex:1，所以每个最多分100
              children: [
                Flexible(
                  child: Container(height: 200, width: 150, color: Colors.red),//最多分到100，但是自己要150，实际长度是100
                ),
                Flexible(child: Container(color: Colors.green)),//最多分到100，自己没有要求尺寸，撑满100，实际尺寸100
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
            width: 300,
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
