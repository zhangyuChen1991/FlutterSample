import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerCardPage extends StatelessWidget {
  const ContainerCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    String params1 = ''' 
| `width / height` | 固定宽高                |
| `constraints`    | 最小 / 最大宽高           |
| `alignment`      | 子组件在 Container 内的位置 |
| `margin`         | 外边距（和父组件的距离）        |
| `padding`        | 内边距（和子组件的距离）        |
''';
    String params2 = '''
| `color`      | 背景色        |
| `decoration` | BoxDecoration（圆角 / 边框 / 阴影 / 背景图） |
''';

    String params3 = '''
| `transform`    | 位移 / 缩放 / 旋转 |
| `clipBehavior` | 超出是否裁剪       | 
Clip.none  Clip.hardEdge(硬裁剪) Clip.antiAlias (抗锯齿裁剪) Clip.antiAliasWithSaveLayer(抗锯齿 + 离屏渲染 性能最差)
''';
    String params4 = '''
| `elevation`    | 阴影高度    |
| `shape`        | 圆角 / 边框 |
| `color`        | 背景色     |
| `margin`       | 外边距     |
| `clipBehavior` | 子组件裁剪   |
''';
    return Scaffold(
      appBar: AppBar(title: const Text("ContainerCardPage")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Container", style: const TextStyle(fontSize: 72)),
              Text(params1),
              Text("Container 0x111501"),
              SizedBox(height: 5),
              Container(
                width: 200,
                height: 120,
                alignment: Alignment.center,
                color: Colors.green,
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text("Container"),
              ),

              SizedBox(height: 30),
              Text("背景 & 装饰", style: const TextStyle(fontSize: 18)),
              Text(params2),
              Text("Container 0x111502"),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text("BoxDecoration"),
              ),

              SizedBox(height: 30),
              Text("变换 & 裁剪", style: const TextStyle(fontSize: 18)),
              Text(params3),
              Text("Container 0x111503 裁剪"),
              SizedBox(height: 5),
              Container(
                width: 100,
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("abcd", style: const TextStyle(fontSize: 44)),
              ),

              SizedBox(height: 50),

              Text("使用transform: Matrix4.translationValues(0, -4, 0), 下面的卡片看起来比原位置要高4个像素，但是实际位置不是看到的这个位置"),
              SizedBox(height: 10),
              Text("Container 0x111504 变换"),
              Container(
                transform: Matrix4.translationValues(0, -4, 0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text("视觉上浮"),
                  ),
                ),
              ),
              SizedBox(height: 50),

              Text("Card", style: const TextStyle(fontSize: 72)),
              Text("自带圆角 + 阴影的容器"),
              SizedBox(height: 5),
              Text(params4),
              Text("Card 0x111601"),
              SizedBox(height: 5),
              Card(
                elevation: 4,
                margin: const EdgeInsets.all(12),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Card"),
                ),
              ),

              SizedBox(height: 30),
              Text("Card + InkWell（点击效果）"),
              Text("Card 0x111602"),
              SizedBox(height: 5),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    print("Card tapped");
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("可点击 Card"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
