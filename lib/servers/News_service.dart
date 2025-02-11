import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/Models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=ea84e6bb74774bd78d8e6d8cece2203c&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel Model = ArticleModel(
            image: article["urlToImage"] ??
                'https://www.washingtonpost.com/obituaries/2025/01/02/osmonds-wayne-osmond-donny/',
            title: article["title"],
            subtitle: article["description"]);
        articleList.add(Model);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
