import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/article_model.dart';
import 'package:flutter_application_1/servers/News_service.dart';
import 'package:flutter_application_1/widgets/News_Listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.cover});
  final String cover;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getTopHeadlines(category: widget.cover);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // Bu kod diyorki  eger veriler versa ekranda verleri  yazdir  .

          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          // Bu  kod diyorki  eger veriler yoksa bana ekrande du yaziyi yaz ('oops there was an erro , try later ')

          return SliverToBoxAdapter(
            child: Text('oops there was an error , try late'),
          );
        } else {
          // Bu kodda eger veriler gelmedise ve hata cikmadiysa o zaman daha (looging ) oluyor yani daha yukleniyor .

          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
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