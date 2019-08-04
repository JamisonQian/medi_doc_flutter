
class ChatRecord{

  String name;
  String lastMessage;
  String lastTime;

  ChatRecord(this.name, this.lastMessage, this.lastTime);
}

final List<ChatRecord> chatList=[
  ChatRecord("王博医生", "最近聊天记录", "1分钟前"),
  ChatRecord("张小泉", "最近聊天记录", "1分钟前"),
  ChatRecord("上海信血管群", "真方便啊", "1分钟前"),
  ChatRecord("吴青医生", "你最近感觉怎样", "1分钟前"),
  ChatRecord("米喜医生", "请问你需要什么服务", "10分钟前"),
  ChatRecord("学术会议", "[显示最近一次发布的学术会议主题]", "20分钟前"),
  ChatRecord("医家讲堂", "[最近一次的讲堂主题]", "30分钟前"),
  ChatRecord("算法学习二群", "vscode工具的使用教程", "昨天"),
  ChatRecord("文件传输助手", "[图片]", "昨天"),
  ChatRecord("米喜研发中心", "将在最新版本修改此bug", "星期五"),
  ChatRecord("米喜医家", "超过2亿人骨量偏低", "2019/7/28")
];