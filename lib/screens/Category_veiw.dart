import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/News_List_View_Builder.dart';

class CategoryVeiw extends StatelessWidget {
  const CategoryVeiw({super.key, required this.category});
final String category ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:5 ,vertical: 25 ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(
              cover: category,
            )
          ],
        ),
      )
    );
  }
}