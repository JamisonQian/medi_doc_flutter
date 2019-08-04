import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MemberPage();
  }
}

class _MemberPage extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xffE8679D),
        title:
            Text("我的医家", style: TextStyle(fontSize: 16, color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.settings, color: Colors.white),
            onPressed: null,
          )
        ],
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  Widget _stack() {
    return Stack(
      children: <Widget>[_topHead(), _bodyList()],
    );
  }

  Widget _topHead() {
    return Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffE8679D),
          Color(0xffBF316b),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)));
  }

  Widget _bodyList() {
    return ListView(
      children: <Widget>[
        _Personal(),
        _myWallet(),
        _NumberAssets(),
        _commonFun()],
    );
  }

  Widget _Personal() {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 16, right: 15),
//      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Row(children: <Widget>[
              new Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(40.0),
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://b-ssl.duitang.com/uploads/item/201708/23/20170823110912_ezTtH.thumb.700_0.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("孙发发",
                      style:
                          TextStyle(fontSize: 16, color: Color(0xff4A4A4A)))),
              IconButton(icon: Image.asset("images/ic_personal_edit.png"), onPressed: null),
              Expanded(child: Text("")),
              IconButton(icon: Image.asset("images/ic_qr_code.png"), onPressed: null),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _IconText("images/ic_archives.png", "待支付"),
                _IconText("images/ic_to_serverd.png", "待服务"),
                _IconText("images/ic_to_evaluate.png", "待评价"),
                _IconText("images/ic_all_order.png", "全部订单")
              ],
            ),
          )
        ],
      ),
    );
  }

  //我的钱包
  Widget _myWallet(){
    return Container(
      margin: EdgeInsets.only(top: 10,left: 15,right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 45,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xffE6E6E6) ,width: 1)
              )
            ),
            child: Text("我的钱包",style: TextStyle(color: Color(0xff4a4a4a),fontSize: 14),),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _IconText("images/ic_account_balance.png", "账户余额"),
                _IconText("images/ic_bank_card.png", "银行卡"),
                _IconText("images/ic_coupon.png", "优惠券"),
                _IconText("images/ic_integral.png", "积分")
              ],
            ),
          )
        ],
      ),
    );

  }
  //数字资产
  Widget _NumberAssets(){
    return Container(
      margin: EdgeInsets.only(top: 10,left: 15,right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 45,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0xffE6E6E6) ,width: 1)
                )
            ),
            child: Text("数字资产（工分）",style: TextStyle(color: Color(0xff4a4a4a),fontSize: 14),),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _IconText("images/ic_grey_circle.png", "账户余额"),
                _IconText("images/ic_grey_circle.png", "银行卡"),
                _IconText("images/ic_grey_circle.png", "优惠券"),
                _IconText("images/ic_grey_circle.png", "积分")
              ],
            ),
          )
        ],
      ),
    );

  }
  //常用功能
  Widget _commonFun(){
    return Container(
      margin: EdgeInsets.only(top: 10,left: 15,right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 45,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0xffE6E6E6) ,width: 1)
                )
            ),
            child: Text("常用功能",style: TextStyle(color: Color(0xff4a4a4a),fontSize: 14),),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _IconText("images/ic_health_records.png", "健康档案"),
                _IconText("images/ic_my_family.png", "我的家人"),
                _IconText("images/ic_my_collection.png", "我的收藏"),
                _IconText("images/ic_my_location.png", "我的地址")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _IconText("images/ic_my_mind.png", "我的心意"),
                _IconText("images/ic_my_appointment.png", "我的预约"),
                _IconText("images/ic_grey_circle.png", "帮助反馈"),
                _IconText("images/ic_grey_circle.png", "关于我们")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _IconText(String iconData, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(iconData,height: 30,width: 30,),
        Container(
          margin: EdgeInsets.only(top: 9),
          child: Text(text,
              style: TextStyle(fontSize: 12, color: Color(0xff4A4A4A))),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: _stack(),
    );
  }
}
