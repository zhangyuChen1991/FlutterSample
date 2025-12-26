import 'package:flutter/material.dart';

class GridViewPageZ extends StatelessWidget {
  const GridViewPageZ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView.builder 0x111703")),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 每行3个
        ),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.blue[(index % 9 + 1) * 100],//Colors.blue[50] -> Colors.blue[900] 方括号中的参数是颜色索引。  有效值: 50, 100, 200, 300, 400, 500, 600, 700, 800, 900
            child: Text('$index'),
          );
        },
      ),
    );
  }
}
