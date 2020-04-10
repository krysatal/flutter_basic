import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // 引入一个ui库，dart需要分号结尾

//void main() => runApp(MyActiveList(
//      // dart里面的数组定义
//        items: new List<String>.generate(
//            1000, (i) => "item $i") // 新建一个list数组，类型string，生成一个长度1000的list
//    )
//);
void main() => runApp(MyGridView_new());
// 创建一个hello界面
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello flutter'),
        ),
        body: Center(
          child: Text(
            '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.lightBlue
            ),
          ),
        ),
      ),
    );
  }
}
// Text组件
class MyText extends StatelessWidget {
  @override //重构里面的方法
  Widget build(BuildContext context) { // 返回一个窗口部件
    return MaterialApp( // 返回一个组件
      title: 'Text Widget',
      home: Scaffold( // 窗口主体需要一个组件Scaffold,可以搭建里面的内容了
          appBar: new AppBar(
              title: new Text('listView Widget')
          ),
          body: Center( //竖直剧中组件，相当于布局组件
            child: Text(
                'Hello Widget， 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈ni',
                textAlign: TextAlign.center,
                maxLines: 1,
                // 最大显示几行
                overflow: TextOverflow.ellipsis,
                // 最大几行溢出部分(clip直接看到砍掉， ellipsis溢出自动省略, fade渐变消失)
                style: TextStyle(
                    fontSize: 25.0, // 必须是浮点数
                    color: Color.fromARGB(255, 255, 125, 125),
                    decoration: TextDecoration.underline, // 加下划线
                    decorationStyle: TextDecorationStyle.solid // 下划线样式（solid实线）
                )
            ),
          )
      ),
    );
  }
}
// Container容器
class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习container',
      home: Scaffold(
        body: Center(
          child: Container( // 相当于div一样的容器
            child: new Text(
              'hello container',
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
            alignment: Alignment.center, // container里面内容的对齐方式(bottomCenter下对齐, bottomLeft下左对齐,centerLeft中间左对齐)
            width: 500.0,
            height: 400.0,
            color: Colors.lightBlue, // 背景色和decoration冲突
            padding: const EdgeInsets.fromLTRB(10.0,20.0,30.0,10.0), // 如何设置padding（all上下左右都是10像素, fromLTRB分别设置上下左右）
            margin: const EdgeInsets.all(20.0),
            decoration: new BoxDecoration(
                gradient: const LinearGradient( // 线性渐变
                    colors: [
                      Colors.lightBlue,
                      Colors.greenAccent,
                      Colors.purpleAccent
                    ]
                ),
                border: Border.all(width: 5.0, color: Colors.red)
            ),
          ),
        ),
      )
    );
  }
}
// Image组件
class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习img组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('学习img')
        ),
        body: Center(
          child: Container(
              child: new Image
                  .network( //（asset：从项目的asset目录获取图片，file: 存在于手机的一个地方，本地路径, memory: 内存图片, network： 网络图片最常用的）
                'http://blogimages.jspang.com/blogtouxiang1.jpg',
                fit: BoxFit.cover,
                // 图片充满整个容器（contain显示图片原本的比例, fill满足容器的需求为先,不管图片是否拉伸,fitWidth横向充满,fitHeight纵向充满,cover图片充满整个容器并且不变形但可能被裁剪,scaleDown不改变原本图片的大小）
                color: Colors.lightGreen,
                //图片混合模式非主流
                colorBlendMode: BlendMode.lighten,
                repeat: ImageRepeat
                    .repeatX, // 重复模式(noRepeat不重复，repeat以中间为基础，重复图片把整个容器填满,repeatX横向重复填满整个容器,repeatY纵向重复填满整个容器)
              ),
              width: 300.0,
              height: 200.0,
              color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
// ListView列表
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习listview',
      home: Scaffold(
        appBar: AppBar(
          title: Text('学习listView'),
        ),
        body: ListView(
          children: <Widget>[
            new Image.network('http://newimg.jspang.com/TaroLogo.jpg'),
            new Image.network('http://newimg.jspang.com/xiaomiquan.png'),
            new Image.network('http://newimg.jspang.com/web111111.jpg'),
            new Image.network('http://blogimages.jspang.com/vue_koa2_ad.jpg'),
          ],
        ),
      ),
    );
  }
}
// ListView列表组件化
class MyListViewComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习listView组件化',
      home: Scaffold(
        appBar: AppBar(
          title: Text('学习listView组件化'),
        ),
        body: Center(
          child: new Container(
            height: 200.0,
            child: MyListItem(),
          ),
        ),
      ),
    );
  }
}
class MyListItem extends StatelessWidget { // 组件化
  @override
  Widget build(BuildContext context) { // 横向列表
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.lightGreen,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrangeAccent,
        ),
        new Container(
          width: 180.0,
          color: Colors.purpleAccent,
        )
      ]
    );
  }
}
// 动态生成一千个list
class MyActiveList extends StatelessWidget {
  // 接受参数
  final List<String> items;
  // 申明一个构造函数，他有一个固定的key值， required必须参数
  // StatelessWidget这个继承的父类没有无名无参的默认构造函数，用super重新构造
  MyActiveList({Key key, @required this.items}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '创建一个动态的list',
      home: Scaffold(
        appBar: AppBar(
          title: Text('创建一个动态的list')
        ),
          body: new ListView.builder( // builder生成构建动态列表
            itemCount: items.length, // 要生成多少条
            itemBuilder: (context, index) {
              return new ListTile(
                title: Text('${items[index]}'),
              );
            },
          )
      ),
    );
  }
}
// 生成一个网格列表(老写法不推荐)
class MyGridView_old extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '网格列表',
      home: Scaffold(
        appBar: AppBar(
          title: Text('应用于图片网站')
        ),
        body: new GridView.count(
          padding: const EdgeInsets.all(20.0), // 内边距
          crossAxisSpacing: 10.0, // 网格的间隙
          crossAxisCount: 3, // 一行显示的列数
          children: <Widget>[
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1')
          ],
        ),
      ),
    );
  }
}
// 生成一个网格列表(新写法)
class MyGridView_new extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '网格列表推荐写法',
      home: Scaffold(
        appBar: AppBar(
          title: Text('<即将上映')
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // 根据里面的内容来进行扩展
            crossAxisCount: 3,
            mainAxisSpacing: 2.0, // 纵向间隔距离
            crossAxisSpacing: 5.0, // 横向间隔距离
            childAspectRatio: 0.7// 横宽比
          ),
          children: <Widget>[
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/21/093533.20750759_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2019/12/18/101618.39683289_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/21/172605.16701064_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/19/095651.33942967_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/21/153809.19154434_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/21/092946.26408543_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2019/08/06/095543.26897010_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/04/07/155756.52335497_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/02/105011.44427003_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/21/093533.20750759_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2019/12/18/101618.39683289_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/21/172605.16701064_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/19/095651.33942967_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/21/153809.19154434_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/21/092946.26408543_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2019/08/06/095543.26897010_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/04/07/155756.52335497_135X190X4.jpg', fit: BoxFit.cover),
            new Image.network(
                'http://img5.mtime.cn/mt/2020/01/02/105011.44427003_135X190X4.jpg', fit: BoxFit.cover)

      ],
        ),
      ),
    );
  }
}
