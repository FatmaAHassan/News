import 'package:flutter/material.dart';
import 'package:news/models/categories_model.dart';
import 'package:news/screens/sources_title.dart';
import 'package:news/shared/network/remote/api_manager.dart';

class NewsScreen extends StatelessWidget {
  CategoryModel categoryModel;

  NewsScreen(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.getSources(categoryModel.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text("Somthing Went Wrong"));
        }
        var sources = snapshot.data?.sources ?? [];
        return SourcesTitle(sources);
      },
    );
  }
}
