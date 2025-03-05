class ArticleModel {
  String? image;
  String? title;
  String? subTitle;
  String? url;
  // final Source source;

  ArticleModel({
    required this.url,
    // required this.source,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      /*  source: Source(
        id: article['source']['id'],
        name: article['source']['name'],
      ), */
      url: json['url'],
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}

// class Source {
//   final String id;
//   final String name;

//   Source({required this.id, required this.name});
// }
