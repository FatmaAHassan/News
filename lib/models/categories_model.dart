import 'dart:ui';

class CategoryModel {
  String id;
  String name;
  String image;
  Color color;

  CategoryModel(this.id, this.name, this.image, this.color);

  static List<CategoryModel> getCategories() {
    return [
      CategoryModel("business", "Business", "assets/imges/bussines.png",
          Color(0xffCF7E48)),
      CategoryModel("politics", "Politics", "assets/imges/Politics.png",
          Color(0xff003E90)),
      CategoryModel(
          "science", "Science", "assets/imges/science.png", Color(0xffF2D352)),
      CategoryModel(
          "sport", "Sport", "assets/imges/sports.png", Color(0xffC91C22)),
      CategoryModel(
          "health", "Health", "assets/imges/health.png", Color(0xffED1E79)),
      CategoryModel("environment", "Environment",
          "assets/imges/environment.png", Color(0xff4882CF)),
    ];
  }
}
