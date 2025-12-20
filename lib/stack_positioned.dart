import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_sample1/MarkdownTableView.dart';

const String stackParamsText = r'''
Stack
| 属性               | 作用               | 常用值/说明                                              |
| ---------------- | ---------------- | --------------------------------------------------- |
| **alignment**    | 未使用positioned的子组件的对齐方式      | `Alignment.center`（默认）、`topLeft`、`bottomRight` 等    |
| **fit**          | 未使用positioned子组件是否拉伸等 Stack | `StackFit.loose`（默认，不拉伸）、`expand`（填满）、`passthrough` |
| **clipBehavior** | 内容超出时是否裁剪        | `Clip.none`、`Clip.hardEdge`                         |
| **children**     | 子组件列表            | 可混合 Positioned 与普通子组件                               |
''';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StackPage")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          //高度是整个屏幕
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              scrollDirection: Axis.horizontal, // 表格太宽时可以横向滑动
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 360),
                child: Text(stackParamsText),
              ),
            ),
            Text("Stack 0x111101"),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 200, height: 200, color: Colors.blue),
                Container(width: 120, height: 120, color: Colors.red),
                const Text(
                  "Center",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),

            SizedBox(height: 50),
            Text("Positioned 0x111201"),
            Stack(
              children: [
                Container(width: 300, height: 300, color: Colors.grey[300]),

                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(width: 80, height: 80, color: Colors.red),
                ),

                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(width: 80, height: 80, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
