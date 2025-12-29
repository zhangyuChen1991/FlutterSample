import 'package:flutter/material.dart';

class AlignCenterPage extends StatelessWidget {
  const AlignCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    String paramsExplain1 = '''Align 的宽 = child.width * widthFactor
Align 的高 = child.height * heightFactor
''';
    return Scaffold(
      appBar: AppBar(title: const Text("AlignCenterPage")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Align", style: TextStyle(fontSize: 18)),
              Text(paramsExplain1),
              Text("Align 0x111801"),
              SizedBox(height: 10),
              Container(
                color: Colors.grey,
                child: Align(
                  widthFactor: 2,
                  heightFactor: 2,
                  alignment: Alignment.bottomRight,
                  child: Text("Hello"),
                ),
              ),

              SizedBox(height: 30),

              Text("Align 右下角按钮"),
              Text("Align 0x111802"),

              Container(
                color: Colors.grey,

                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),
              Text("Center 本质上是 Align(alignment: Alignment.center) 的语法糖"),
              Text("Center 0x111901"),
              SizedBox(height: 10),
              Container(
                height: 100,
                color: Colors.grey,
                child: Center(child: CircularProgressIndicator()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
