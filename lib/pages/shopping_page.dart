import 'package:flutter/material.dart';
class ShoppingPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffEB679F),
        title: Text("商城",style: TextStyle(color: Colors.white,fontSize: 18)),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: ShopBody(),
    );
  }

}



class ShopBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _topMenu(),
          _bodyTitle(),
          _bodyList()
        ],
      ),
    );
  }
  //顶部菜单
  Widget _topMenu(){
     return Container(
       decoration: BoxDecoration(
         color: Colors.white,
         border: Border(bottom: BorderSide(color: Color(0xffe6e6e6),width: 1))
       ),
        padding: EdgeInsets.only(top: 20,bottom: 20),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           _IconText("images/ic_grey_circle.png", "分类"),
           _IconText("images/ic_grey_circle.png", "分类"),
           _IconText("images/ic_grey_circle.png", "分类"),
           _IconText("images/ic_grey_circle.png", "分类"),
         ],
       ),

     );
  }
  //封装的文字图标
  Widget _IconText(String iconData, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(iconData, height: 50, width: 50),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(text,
              style: TextStyle(fontSize: 14, color: Color(0xff4a4a4a))),
        )
      ],
    );
  }
  Widget _bodyTitle(){
    return Container(
      height: 45,
      width: double.infinity,
      color: Colors.white,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 15),
      child: Text("精品推荐",style: TextStyle(color: Color(0xffBE3468),fontSize: 14,fontWeight: FontWeight.bold),),
    );
  }

  Widget _bodyList(){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 15,right: 15),
      child: GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          //一行的数量
          crossAxisCount: 2,
          //水平item 之间的间距
          crossAxisSpacing: 10,
          //垂直之间的间距
          mainAxisSpacing: 10,
          //子widget的宽高比例
          childAspectRatio: 1.0,
          children: getWidgetList(),
      ),
    );
  }

  Widget getItemContainer(String item) {
    return Container(
      color: Color(0xffd8d8d8),
    );
  }
  List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 20; i++) {
      list.add(i.toString());
    }
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }



}