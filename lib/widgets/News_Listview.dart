import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/article_model.dart';
import 'package:flutter_application_1/widgets/News_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: NewsTile(articleModel: articles[index])
          );
        },
      ),
    );
  }
}
