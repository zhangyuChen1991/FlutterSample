import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PaddingSizedboxSpacer")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          //高度是整个屏幕
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Padding 加边距, SizedBox 写固定尺寸"),
            SizedBox(height: 50),
            Text("Padding 0x11091"), //Expanded = 占用剩余空间

            Container(
              color: Colors.grey,
              child: Padding(
                //四边相同的 padding
                padding: EdgeInsets.all(16),
                child: Container(color: Colors.blue, child: Text("四周padding")),
              ),
            ),

            SizedBox(height: 50),
            Text("Padding 0x11092"),
            Container(
              color: Colors.grey,
              child: Padding(
                //水平和垂直方向不同
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Container(
                  color: Colors.blue,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("水平和垂直方向不同"),
                ),
              ),
            ),

            SizedBox(height: 50),
            Text("Padding 0x11093"),
            SizedBox(height: 10),

            Container(
              color: Colors.grey,
              child: Padding(
                //只给左边加内边距
                padding: EdgeInsets.only(left: 30),

                child: Container(
                  color: Colors.blue,
                  child: Text("左边有 30 的 padding"),
                ),
              ),
            ),

            SizedBox(height: 50),
            Text("Spacer 0x1110"),
            SizedBox(height: 10),

            Container(
              color: Colors.grey,
              child: Row(children: [Text("左边"), Spacer(), Text("右边")]),
            ),
          ],
        ),
      ),
    );
  }
}
