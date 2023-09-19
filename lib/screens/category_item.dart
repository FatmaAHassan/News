import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/categories_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel categoryModel;

  CategoryItem(this.categoryModel, this.index);

  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: categoryModel.color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
            bottomRight: index.isOdd ? Radius.circular(25) : Radius.zero,
            bottomLeft: index.isEven ? Radius.circular(25) : Radius.zero,
          )),
      child: Column(
        children: [
          Expanded(child: Image.asset(categoryModel.image)),
          Text(
            categoryModel.name,
            style: GoogleFonts.elMessiri(fontSize: 25, color: Colors.white),
          )
        ],
      ),
    );
  }
}
