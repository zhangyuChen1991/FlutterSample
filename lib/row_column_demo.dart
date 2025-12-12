import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RowColumnPage")),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

       Text(
  """
**mainAxisAlignment**  主轴方向: 居中、居底、均匀分布               
**crossAxisAlignment** 交叉轴方向: 靠左、靠右、拉伸                 
**mainAxisSize**       
                           max,让 Column占满全高        
                           min:高度只包住内容，不拉满父容器   
**textDirection**      文字方向、对齐方向（从左到右/从右到左
**verticalDirection**  控制 Column 内部 child 的上下方向  从下往上（反向）           
""",
),

// MainAxisAlignment.start       // 靠开始位置
// MainAxisAlignment.center      // 居中
// MainAxisAlignment.end         // 靠结束位置
// MainAxisAlignment.spaceBetween// 平均分布，两头贴边
// MainAxisAlignment.spaceAround // 平均分布，四周都有间距
// MainAxisAlignment.spaceEvenly // 完全均匀分布

// CrossAxisAlignment.start     // 靠左
// CrossAxisAlignment.center    // 居中
// CrossAxisAlignment.end       // 靠右
// CrossAxisAlignment.stretch   // 拉伸填满


          Text("Column 0x1101"),
          SizedBox(height: 200,child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                width: 200,
                height: 50,
                color: Color.fromARGB(255, 202, 5, 28),
              ),
              Container(
                width: 200,
                height: 50,
                color: Color.fromARGB(255, 67, 5, 202),
              ),
              Container(
                width: 200,
                height: 50,
                color: Color.fromARGB(255, 186, 223, 19),
              ),
            ],
          ),),
          

          SizedBox(height:50),

          Text("Row 0x1102"),
          Row(
            children: [
              Container(
                width: 50,
                height: 200,
                color: Color.fromARGB(255, 202, 5, 28),
              ),
              Container(
                width: 50,
                height: 200,
                color: Color.fromARGB(255, 67, 5, 202),
              ),
              Container(
                width: 50,
                height: 200,
                color: Color.fromARGB(255, 186, 223, 19),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
