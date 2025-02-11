import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/article_model.dart';
import 'package:flutter_application_1/servers/News_service.dart';
import 'package:flutter_application_1/widgets/News_Listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future ; 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future =  NewsService().getTopHeadlines(
      category:widget.category 
    );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List <ArticleModel>>(
      future: future ,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text('oops there was an error , try late'),
          );
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.7,

              child: Center(
                child: CircularProgressIndicator(                color: Colors.black,
),
              ),
            ),
          );
        }
      },
    );
  }
}

/* 
 var future ;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
   future = NewsService().getNews( );
  }
 
 **/