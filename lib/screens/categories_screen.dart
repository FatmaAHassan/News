import 'package:flutter/material.dart';
import 'package:news/models/categories_model.dart';
import 'package:news/screens/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  var categories = CategoryModel.getCategories();

  Function onCategoryColick;

  CategoriesScreen(this.onCategoryColick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: GridView.builder(
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                onCategoryColick(categories[index]);
              },
              child: CategoryItem(categories[index], index));
        },
      ),
    );
  }
}
