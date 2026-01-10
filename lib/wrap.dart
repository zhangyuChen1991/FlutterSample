import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WrapPage")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Wrap = 会自动换行（或换列）的 Row / Column"),
          SizedBox(height: 50),
          Text("Wrap 0x111201"),
          SizedBox(height: 10),
          Wrap(
            spacing: 8.0, // 主轴（横向）间距
            runSpacing: 4.0, // 换行后的纵向间距
            children: [
              Chip(label: Text('Flutter')),
              Chip(label: Text('Dart')),
              Chip(label: Text('Android')),
              Chip(label: Text('iOS')),
              Chip(label: Text('Web')),
              Chip(label: Text('Desktop')),
            ],
          ),

          SizedBox(height: 30),

          Text("Wrap 0x112002"),
          SizedBox(height: 15),
          Wrap(
            direction: Axis.vertical,
            spacing: 10,
            children: List.generate(
              6,
              (i) => Container(
                width: 80,
                height: 40,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text('Item $i'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
