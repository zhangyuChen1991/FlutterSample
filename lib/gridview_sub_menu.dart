import 'package:flutter/material.dart';
import 'package:flutter_application_sample1/gridview1.dart';
import 'package:flutter_application_sample1/gridview2.dart';
import 'package:flutter_application_sample1/gridview3.dart';

class GridViewSubMenuPage extends StatelessWidget {
  const GridViewSubMenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridViewPage")),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return ListTile(
              title: Text(item),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                print("点击了：$item");
                // 👉 点击跳转到子页面
                gotoPage(item,context);
              },
            );
          },
        ),
      ),
    );
  }
}

final List<String> items = [
  "GridView.count",
  "GridView.build",
  "GridView.extent",
];
void gotoPage(String item, BuildContext context) {
  Widget? page;
  switch (item) {
    case "GridView.count":
      page = GridViewPageX();
      break;
    case "GridView.extent":
      page = GridViewPageY();
      break;
    case "GridView.build":
      page = GridViewPageZ();
      break;
    default:
      print("Unknown page: $item");
      return;
  }

  print("gotoPage() $item");

  Navigator.push(context, MaterialPageRoute(builder: (_) => page!));
}
