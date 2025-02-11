import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/category_models.dart';
import 'package:flutter_application_1/screens/Category_veiw.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModels category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryVeiw(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 95,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(category.image)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          )),
        ),
      ),
    );
  }
}
