import 'package:flutter/material.dart';
import 'row_column_demo.dart';
import 'expland_flexible.dart';
import 'error_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 示例数据（你可替换成任意 List）
    final List<String> items = [
      "Row / Column",
      "Expanded & Flexible",
      "Padding / SizedBox/Spacer",
      "Stack & Positioned",
      "SingleChildScrollView",
      "Container / Card",
      "GridView",
      "Align / Center",
      "Wrap",
    ];
    final List<IconData> icons = [
      Icons.view_column, // Row / Column
      Icons.unfold_more, // Expanded & Flexible
      Icons.space_bar, // Padding / SizedBox / Spacer
      Icons.layers, // Stack & Positioned
      Icons.swap_vert, // SingleChildScrollView
      Icons.crop_square, // Container / Card
      Icons.grid_view, // GridView
      Icons.center_focus_strong, // Align / Center
      Icons.wrap_text, // Wrap
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return ListTile(
              title: Text(item),
              leading: Icon(icons[index]),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                print("点击了：$item");
                // 👉 点击跳转到子页面
                gotoPage(item);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void gotoPage(String item) {
    Widget page;

    switch (item) {
      case "Row / Column":
        page = RowColumnPage();
        break;
      case "Expanded & Flexible":
        page = ExplandFlexiblePage();
        break;
      // case "Padding / SizedBox / Spacer":
      //   page = PaddingPage();
      //   break;
      // case "Stack & Positioned":
      //   page = StackPage();
      //   break;
      // case "SingleChildScrollView":
      //   page = ScrollPage();
      //   break;
      // case "Container / Card":
      //   page = ContainerCardPage();
      //   break;
      // case "GridView":
      //   page = GridViewPage();
      //   break;
      // case "Align / Center":
      //   page = AlignCenterPage();
      //   break;
      // case "Wrap":
      //   page = WrapPage();
      //   break;

      default:
        page = ErrorPage();
    }

    print("gotoPage() $item");
    print("gotoPage() $page");

    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }
}
