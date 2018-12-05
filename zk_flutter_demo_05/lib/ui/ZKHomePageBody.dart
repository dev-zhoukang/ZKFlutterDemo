import 'package:flutter/material.dart';
import './ZKHomeCell.dart';

class ZKHomePageBody extends StatelessWidget {
  final List<ZKPlanetModel> planetModels = [
    ZKPlanetModel(
      id: '1',
      name: '周杰伦',
      address: '北京市 朝阳区',
      gender: '男',
      age: '30',
      descrition:
          '2000年发行首张个人专辑《Jay》。2001年发行的专辑《范特西》奠定其融合中西方音乐的风格 [1]  。2002年举行“The One”世界巡回演唱会 [2]  。2003年成为美国《时代周刊》封面人物 [3-4]  。2004年获得世界音乐大奖中国区最畅销艺人奖 [5]  。2005年凭借动作片《头文字D》获得台湾电影金马奖、香港电影金像奖最佳新人奖 [6]  。2006年起连续三年获得世界音乐大奖中国区最畅销艺人奖 [7]  。2007年自编自导的文艺片《不能说的秘密》获得台湾电影金马奖年度台湾杰出电影奖 [8]  。2008年凭借歌曲《青花瓷》获得第19届金曲奖最佳作曲人奖 [9]  。2009年入选美国CNN评出的“25位亚洲最具影响力的人物” [10]  ；同年凭借专辑《魔杰座》获得第20届金曲奖最佳国语男歌手奖 [11]  。2010年入选美国《Fast Company》评出的“全球百大创意人物” [12]  。2011年凭借专辑《跨时代》再度获得金曲奖最佳国语男歌手奖，并且第4次获得金曲奖最佳国语专辑奖 [13]  ；同年主演好莱坞电影《青蜂侠》 [14]  。2012年登福布斯中国名人榜榜首 [15]  。2014年发行华语乐坛首张数字音乐专辑《哎呦，不错哦》 [16]  。2018年举行“地表最强2世界巡回演唱会” [17]  。',
      image: 'images/mars.png',
      picture:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1543934675275&di=af293a065f4dbbe2a22711a8264e2bb7&imgtype=0&src=http%3A%2F%2Fbbsfiles.vivo.com.cn%2Fvivobbs%2Fattachment%2Fforum%2F201702%2F21%2F093712l1i9fo1op8iosdsn.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => new ZKHomeCell(planetModels[index]),
        itemCount: planetModels.length,
        itemExtent: 152.0,
        padding: EdgeInsets.symmetric(vertical: 16.0),
      ),
    );
  }
}
