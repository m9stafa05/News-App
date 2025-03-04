import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio = Dio();
  NewsServices();

  Future<List<ArticleModel>> getNews({
    required String category,
  }) async {
    try {
      Response respnse = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=a679955c0f1c435ab3761432b65452ca&category=$category&country=us#',
      );
      Map<String, dynamic> jsonData =
          respnse.data;
      List<dynamic> articles =
          jsonData['articles'];
      List<ArticleModel> articleList = [];

      // Convert Json Data To Objects #
      for (var article in articles) {
        ArticleModel articleModel =
            ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
