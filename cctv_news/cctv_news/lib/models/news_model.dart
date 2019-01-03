class NewsModel {
  final String id;
  final String title;
  final DateTime publishDate;
  final String imgUrlString;
  final String content;
  final String source;
  final String detailUrl;

  NewsModel({
    this.id,
    this.title,
    this.publishDate,
    this.imgUrlString,
    this.content,
    this.source,
    this.detailUrl,
  });

  NewsModel.fromNewsDetailDict(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        publishDate = DateTime.parse(map['pubtime']),
        imgUrlString = map['logo'],
        content = map['content'],
        source = map['source'],
        detailUrl = '';

  NewsModel.fromNewsListDict(Map<String, dynamic> map)
      : title = map['itemTitle'] ?? '新闻标题解析异常',
        publishDate =
            DateTime.fromMillisecondsSinceEpoch(int.parse(map['pubDate'])),
        imgUrlString = ((map['itemImageNew'] as List).first as Map)['imgUrl'],
        id = map['itemID'],
        content = map['content'],
        source = map['source'],
        detailUrl = map['url'];
}
