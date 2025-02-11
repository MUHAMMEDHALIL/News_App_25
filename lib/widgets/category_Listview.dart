import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/category_models.dart';
import 'package:flutter_application_1/widgets/category_card.dart';

class Category_ListView extends StatelessWidget {
  const Category_ListView({
    super.key,
  });
  final List<CategoryModels> categories = const [
    CategoryModels(image: 'assets/image/sport.jpg', categoryName: 'Sports'),
    CategoryModels(image: 'assets/image/general.avif', categoryName: 'General'),
    CategoryModels(
        image: 'assets/image/Entertainment.jpg', categoryName: 'Entertainment'),
    CategoryModels(image: 'assets/image/Health.jpg', categoryName: 'Health'),
    CategoryModels(
        image: 'assets/image/Business.jpg', categoryName: 'Business'),
    CategoryModels(image: 'assets/image/science.avif', categoryName: 'Science'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
