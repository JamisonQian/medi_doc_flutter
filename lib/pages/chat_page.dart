import 'package:flutter/material.dart';
import 'package:medi_doctor/model/chat_list.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xffEB679F),
        title: new Text(
          "沟通",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Image.asset(
              "images/ic_contact.png",
              width: 28,
              height: 28,
            ),
            onPressed: null),
        actions: <Widget>[
          IconButton(
              icon: Image.asset(
                "images/ic_custom_service.png",
                width: 28,
                height: 28,
              ),
              onPressed: null),
          IconButton(
              icon: Image.asset(
                "images/ic_more_add.png",
                width: 28,
                height: 28,
              ),
              onPressed: null)
        ],
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: ChatBody(),
    );
  }
}

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[_topMesage(), _bodyList(context)],
      ),
    );
  }

  //顶部消息模块
  Widget _topMesage() {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.only(top: 14, bottom: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _IconText("images/ic_system_message.png", "系统消息"),
          _IconText("images/ic_order_message.png", "订单消息"),
          _IconText("images/ic_account_message.png", "账户消息")
        ],
      ),
    );
  }

  //封装的文字图标
  Widget _IconText(String iconData, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(iconData, height: 40, width: 40),
        Container(
          margin: EdgeInsets.only(top: 9),
          child: Text(text,
              style: TextStyle(fontSize: 14, color: Color(0xff9b9b9b))),
        )
      ],
    );
  }

  //返回中间的列表
  Widget _bodyList(BuildContext context) {
    return Container(
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: chatList.length, itemBuilder: _listItemBuilder),
    );
  }

  //列表的item
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.only(top: 12, bottom: 12, left: 15, right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(color: Color(0xffF5F5F5), width: 1))),
      child: Row(
        children: <Widget>[
          Image.asset("images/ic_grey_circle.png", width: 50, height: 50),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 8),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(chatList[index].name,
                    style: TextStyle(fontSize: 18, color: Color(0xff4a4a4a))),
                Container(
                  margin: EdgeInsets.only(top: 9),
                  child: Text(chatList[index].lastMessage,
                      style: TextStyle(fontSize: 14, color: Color(0xff9b9b9b))),
                )
              ],
            ),
          )),
          Container(
            child: Text(chatList[index].lastTime,
                style: TextStyle(fontSize: 14, color: Color(0xff9b9b9b))),
          )
        ],
      ),
    );
  }
}
