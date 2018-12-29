class NewsModel {
  final String id;
  final String title;
  final DateTime publishDate;
  final String imgUrlString;
  NewsModel({
    this.id,
    this.title,
    this.publishDate,
    this.imgUrlString,
  });

  NewsModel.fromDict(Map<String, dynamic> map)
      : title = map['itemTitle'] ?? '新闻标题解析异常',
        publishDate =
            DateTime.fromMillisecondsSinceEpoch(int.parse(map['pubDate'])),
        imgUrlString = ((map['itemImageNew'] as List).first as Map)['imgUrl'],
        id = map['itemID'];
}
