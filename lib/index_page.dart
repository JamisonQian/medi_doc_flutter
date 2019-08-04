import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/shopping_page.dart';
import 'pages/chat_page.dart';
import 'pages/member_page.dart';

void main(){
  runApp(new MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainPageState();
  }

}

class _MainPageState extends State<MainPage>{
  final List<BottomNavigationBarItem> bottomTabs=[
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        title: Text("首页"),

    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        title: Text("商城")
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.conversation_bubble),
        title: Text("沟通")
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person),
        title: Text("我的")
    ),
  ];

  final List tabPages =[
    HomePage(),
    ShoppingPage(),
    ChatPage(),
    MemberPage()
  ];
  //当前选中页面的索引
  int currentIndex = 0;
  //当前页面
  var currentPage;
  @override
  void initState() {
    //设置默认选中
    currentIndex = 0;
    currentPage = tabPages[currentIndex];

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),

      bottomNavigationBar: BottomNavigationBar(
          //充满
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: bottomTabs,
          unselectedItemColor: Color(0xffb6b6b6),
          selectedItemColor: Color(0xffd43e72),
          onTap: (index){
            setState(() {
              currentIndex = index;
              currentPage = tabPages[currentIndex];
            });
          }),
      body: currentPage,
    );
  }

}





