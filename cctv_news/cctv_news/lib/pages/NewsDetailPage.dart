import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsDetailPage extends StatefulWidget {
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  String html =
      '<p style="text-align: center;"><span id="videoGuidCode1" class="videoGuidCode video" len="04:18" rel="ba827758224a446491b9cc375e6cc6e4" logo="http://p3.img.cctvpic.com/fmspic/2018/12/14/ba827758224a446491b9cc375e6cc6e4-131.jpg" style="display:none"></span>[!--begin:htmlVideoCode--]ba827758224a446491b9cc375e6cc6e4,0,1,news[!--end:htmlVideoCode--]</p><p>改革开放40年，中国的社会经济发生了翻天覆地的变化，中国速度、中国奇迹不仅改变了中国的发展轨迹与经济地位，也对世界产生了深远影响。这些变化，不仅普通民众感同身受，不少工作生活在中国的外国友人同样有着他们的独特观察。从中国发展模式、中国脱贫奇迹、中国的创新发展到中国普通民众的生活，都成为他们观察中国、读懂中国的独到视角。接下来，我们就去认识一位定居在中国的美国人——哈维·佐丁。</p><p>71岁的哈维·佐丁，用“盛开”来形容中国发展。他曾经是美国广播公司的副总裁，并担任过美国前总统卡特的法律顾问。2005年，他定居中国，亲眼目睹改革开放为中国带来的“世纪性”变革。他认为，随着综合国力的不断提高，中国正日益走近世界舞台中央。</p><p style="text-align: center;"><img src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755123129_246_514x379.png" localname="1544755123129_246_514x379.png" localpath="/cportal/data/img/2018/12/14/" publishflag="" imginfo="" style="max-width: 100%" _src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755123129_246_514x379.png"></p><p>走进演播室担任特邀评论员，讲述中国的经济发展、民生变化。谈起中国，哈维·佐丁就像打开了话匣子。</p><p style="text-align: center;"><img src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755131532_190_539x373.png" localname="1544755131532_190_539x373.png" localpath="/cportal/data/img/2018/12/14/" publishflag="" imginfo="" style="max-width: 100%" _src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755131532_190_539x373.png"></p><p><strong>美国学者 哈维·佐丁：</strong>我第一次到中国是在1988年来旅游，大约15年前，我搬到北京并一直在这里定居。我想起三十年前在北京坐公交的时候，车里还很拥挤并且充斥着柴油的味道。而现在大部分都换成了新能源车型，没有污染还很舒适。现在中国各方面都比美国、欧洲很多国家领先太多。套用一句早期美国的广告词来说就是“苦尽甘来了，中国”。</p><p style="text-align: center;"><img src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755158870_724_514x377.png" localname="1544755158870_724_514x377.png" localpath="/cportal/data/img/2018/12/14/" publishflag="" imginfo="" style="max-width: 100%" _src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755158870_724_514x377.png"></p><p>佐丁用“盛开”来形容今天的中国，改革开放四十年，中国不断在传承中变革，取得了“世纪性”的伟大成就，开启了全新的发展模式，而这一切得益于中国共产党的坚强领导。</p><p style="text-align: center;"><img src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755181667_17_521x362.png" localname="1544755181667_17_521x362.png" localpath="/cportal/data/img/2018/12/14/" publishflag="" imginfo="" style="max-width: 100%" _src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755181667_17_521x362.png"></p><p><strong>美国学者 哈维·佐丁：</strong>（中国政府）是我见过最努力的人民公仆。政府官员都致力于中国的改变，实现中华民族的复兴。中国的制度和发展模式有着明确的目标，如果国家系统都有如此明确的目标，那就会形成一股不可阻挡的趋势。</p><p>在佐丁看来，如果说邓小平带领中国走上了改革开放之路，那么习近平主席则带领中国前所未有地走近世界舞台中心，今天的中国已经成为国际事务的重要参与者和全球治理的贡献者。</p><p style="text-align: center;"><img src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755223646_370_513x365.png" localname="1544755223646_370_513x365.png" localpath="/cportal/data/img/2018/12/14/" publishflag="" imginfo="" style="max-width: 100%" _src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755223646_370_513x365.png"></p><p><strong>美国学者 哈维·佐丁：</strong>如果你看习主席两年前在达沃斯和日内瓦的演讲，中国有着强烈的意愿登上国际舞台，而且也做好了充分准备，这体现出中国拥护全球化的行动，中国也已经成为了这样一个角色。习主席和他的团队在2013年预见性提出，世界需要互联互通、需要合作，并提出用共赢的方式，通过“一带一路”倡议连接起全球。</p><p>佐丁认为，他不仅是一个中国的观察者，更希望能够以自己在西方媒体和政府工作的经验，搭建沟通桥梁，让世界读懂中国。</p><p style="text-align: center;"><img src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755258475_428_523x369.png" localname="1544755258475_428_523x369.png" localpath="/cportal/data/img/2018/12/14/" publishflag="" imginfo="" style="max-width: 100%" _src="http://p1.img.cctvpic.com/cportal/img/2018/12/14/1544755258475_428_523x369.png"></p><p><strong>美国学者 哈维·佐丁：</strong>习主席说中国要学会讲故事，我认为我的一些经验可以为此作出贡献，因此我选择定居这里，担任国家形象传播研究中心的高级顾问，这个智库的主要工作就是致力于向世界展现一个积极的中国，我也希望中国能够越来越好。</p>';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://my.oschina.net/nicsun/blog/95632',
      // url: 
          // 'http://m.news.cctv.com/m/a/index.shtml?id=ARTI7DHEm4r71pPBnTlzCA5N181220',

      appBar: AppBar(
        title: Text('新闻详情'),
      ),
      hidden: true,
      withZoom: true,
      withLocalStorage: true,
      initialChild: Container(
        color: Colors.redAccent,
        child: Center(
          child: Text('Loading', style: TextStyle(color: Colors.black26),),
        ),
      ),
    );
  }
}
