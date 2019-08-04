import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset(
              "images/ic_home_message.png",
              width: 28,
              height: 28,
            ),
            onPressed: null),
        backgroundColor: Color(0xffEB679F),
        centerTitle: true,
        title: new Container(
          height: 30,
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: <Widget>[
//                  IconButton(icon: Image.asset("images/ic_seach_gray.png",width: 16,height: 16,)),
              Icon(Icons.search, size: 16),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text("搜索附近医生",
                    style: TextStyle(color: Colors.white, fontSize: 14)),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Color(0xffD5417c),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
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
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[_topBanner(), _bodyFunction(), _findDoc(), _video(),_bodyList()],
      ),
    );
  }

  List<String> imageList = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564931625095&di=ef8660ff8f53641e7a8827f0abe65e50&imgtype=0&src=http%3A%2F%2Fpic.16pic.com%2F00%2F52%2F20%2F16pic_5220327_b.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564931625095&di=4146c8854eaa39feb6958c56e236700b&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01acaf5722af116ac7253812b32635.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564931625095&di=3f76c845c226439ee8f5c842715db650&imgtype=0&src=http%3A%2F%2Fimg.jk51.com%2Fimg_jk51%2F20979049.jpeg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564931625092&di=f80be23a0e1f63a817ff9846825582bf&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fdesign%2F00%2F47%2F23%2F71%2F5690794a876c6.jpg",
  ];

  Widget _topBanner() {
    return Container(
      width: double.infinity,
      height: 150,
      child: Swiper(
        itemCount: imageList.length,
        itemBuilder: _bannerItemBuilder,
        pagination: SwiperPagination(),
        controller: SwiperController(),
      ),
    );
  }

  Widget _bodyFunction() {
    return Container(
      height: 140,
      color: Colors.white,
      child: Row(
        children: <Widget>[_smcxLeft(), _smhyRight()],
      ),
    );
  }

  final String docUrl =
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565527332&di=14549606039a55e1e8c1c0edce97f611&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.yihu365.com%2Fimages%2Fservice%2Fchaixian.png";

  //上门拆线
  Widget _smcxLeft() {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(color: Color(0xffe6e6e6)),
              bottom: BorderSide(color: Color(0xffe6e6e6)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "上门拆线",
                style: TextStyle(color: Color(0xff4a4a4a), fontSize: 14),
              )),
          Container(
              margin: EdgeInsets.only(top: 6, bottom: 5),
              child: Text(
                "伤口消毒、拆线、更换辅料",
                style: TextStyle(color: Color(0xff9b9b9b), fontSize: 12),
              )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 106,
                child: Image.network(docUrl, fit: BoxFit.fill),
              )
            ],
          ))
        ],
      ),
    ));
  }

  Widget _smhyRight() {
    return Expanded(
        child: Column(
      children: <Widget>[
        _rightfun("上门换药", "伤口消毒、更换辅料",
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565528438&di=0610dad0397aad2d69ab0f1fd6ad7de0&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.yzcdn.cn%2Fupload_files%2F2018%2F08%2F30%2FFgWP9Do_Frb0BIf605CWouuzHfhd.jpg%3FimageView2%2F2%2Fw%2F580%2Fh%2F580%2Fq%2F75%2Fformat%2Fjpg"),
        _rightfun("智能穿戴设备", "服务年包",
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565528510&di=1026c7da9cc23971a2e88c9db491a5e7&imgtype=jpg&er=1&src=http%3A%2F%2Fimg14.360buyimg.com%2Fn1%2Fjfs%2Ft1000%2F295%2F890804605%2F79165%2Fe68ccb13%2F55541821N45b98287.jpg")
      ],
    ));
  }

  Widget _rightfun(String title, String content, String url) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0xffd1d1d1), width: 1))),
      child: Container(
          margin: EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              title,
                              style: TextStyle(
                                  color: Color(0xff4a4a4a), fontSize: 14),
                            ),
                          ),
                          Container(
                            child: Text(
                              content,
                              style: TextStyle(
                                  color: Color(0xff9b9b9b), fontSize: 12),
                            ),
                          )
                        ],
                      ))),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 63,
                width: 46,
                child: Image.network(
                  url,
                  fit: BoxFit.fill,
                ),
              )
            ],
          )),
    ));
  }

  Widget _findDoc() {
    return Container(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(left: 15, top: 15, right: 15),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
              height: 60,
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  gradient: LinearGradient(
                      colors: [Color(0xffe4f2f4), Color(0xfff9ffff)])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "找医生",
                      style: TextStyle(color: Color(0xff4a4a4a), fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "米喜旗下家庭医生",
                      style: TextStyle(color: Color(0xff9b9b9b), fontSize: 12),
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 60,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  gradient: LinearGradient(
                      colors: [Color(0xffe4f2f4), Color(0xfff9ffff)])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "慢病管理",
                      style: TextStyle(color: Color(0xff4a4a4a), fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "定期检查、健康指导",
                      style: TextStyle(color: Color(0xff9b9b9b), fontSize: 12),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _video() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xffe6e6e6)))
      ),

      height: 60,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Text("宣教视频",
                  style: TextStyle(color: Color(0xff4a4a4a), fontSize: 18))),
          Expanded(child: Text("")),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Text(
              "更多",
              style: TextStyle(color: Color(0xff9b9b9b), fontSize: 12),
            ),
          )
        ],
      ),
    );
  }

  Widget _bodyList(){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 15,right: 15,top: 15),
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
    for (int i = 0; i < 10; i++) {
      list.add(i.toString());
    }
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  Widget _bannerItemBuilder(BuildContext context, int index) {
    return Image.network(imageList[index], fit: BoxFit.fill);
  }
}
