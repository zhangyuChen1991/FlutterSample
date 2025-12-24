import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ScrollPage")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SafeArea 自动把内容避开系统的危险区域（刘海、状态栏、底部 Home 手势栏等），防止内容被挡住"),
              Text("SingleChildScrollView 0x111301"),
              SizedBox(height: 10),
              SafeArea(
                child: SizedBox(
                  height: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("Header"),
                        SizedBox(height: 10),
                        Container(height: 200, color: Colors.blue),
                        Container(height: 200, color: Colors.red),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              Text("横向滚动"),
              Text("SingleChildScrollView 0x111302"),
              SizedBox(
                width: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(width: 150, height: 100, color: Colors.green),
                      Container(width: 150, height: 100, color: Colors.orange),
                      Container(width: 150, height: 100, color: Colors.purple),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Text("BouncingScrollPhysics (iOS 弹性效果)"),
              Text("SingleChildScrollView 0x111303"),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(width: 150, height: 100, color: Colors.green),
                      Container(width: 150, height: 100, color: Colors.orange),
                      Container(width: 150, height: 100, color: Colors.purple),
                    ],
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
