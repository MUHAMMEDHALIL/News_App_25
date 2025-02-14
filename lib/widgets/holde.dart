
// Bu kod fotografi yuvarlamk icin kullanir 

/*Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            child: Center(
              child: Text(
                cd.c_Name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
            ),
            radius: 100,
            backgroundImage: AssetImage(cd.c_image),
          ),
        ),
      ],
    );*/


/*


    import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_application_25/models/articles_model.dart';
import 'package:flutter_news_application_25/services/news_services.dart';
import 'package:flutter_news_application_25/widgets/News_Title.dart';

class NewsTitleBuiulder extends StatefulWidget {
  const NewsTitleBuiulder({super.key});

  @override
  State<NewsTitleBuiulder> createState() => _NewsTitleBuiulderState();
}

class _NewsTitleBuiulderState extends State<NewsTitleBuiulder> {
  bool isLoading = true;

  List<ArticlesModel> articles = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Newsgeneral();
  }

  Future<void> Newsgeneral() async {
    articles = await NewsServices(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.7, // Adjust height if needed
              child: Center(
                  child: CircularProgressIndicator(
                color: Colors.black,
              )),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 22),
                    child: NewsTitle(articlesModel: articles[index]));
              },
            ),
          );

    /*
    ListView.builder(
      shrinkWrap: true,
      physics:NeverScrollableScrollPhysics(),
      itemCount: News.length,
      itemBuilder:(context , index ){
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: NewsTitle(MD: News[index]),
        ) ;
      }
      );
    
    */
  }
}
*/



// Bu kodda verileri cekmek icin 1. yolu 

 /*
  bool isLoading = true;

  List<ArticlesModel> articles = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Newsgeneral();
  }

  Future<void> Newsgeneral() async {
    articles = await NewsServices(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }
*/


 /* return isLoading
        ? SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.7, // Adjust height if needed
              child: Center(
                  child: CircularProgressIndicator(
                color: Colors.black,
              )),
            ),
          )
        : NewsListView(articles: articles);*/





        // News_List_view

    /*
    ListView.builder(
      shrinkWrap: true,
      physics:NeverScrollableScrollPhysics(),
      itemCount: News.length,
      itemBuilder:(context , index ){
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: NewsTitle(MD: News[index]),
        ) ;
      }
      );
    
    */