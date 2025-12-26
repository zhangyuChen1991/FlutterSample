import 'package:flutter/material.dart';

class GridViewPageY extends StatelessWidget {
  const GridViewPageY({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView.extent 0x111702")),
      body: GridView.extent(
        mainAxisSpacing: 1, // 垂直间距
        crossAxisSpacing: 1, // 水平间距
        maxCrossAxisExtent: 150, // 每个 item 最大宽度
        children: List.generate(10, (index) {
          return Container(color: Colors.green, child: Text('$index'));
        }),
      ),
    );
  }
}
