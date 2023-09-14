import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/categories_model.dart';
import 'package:news/screens/categories_screen.dart';
import 'package:news/screens/drawer.dart';
import 'package:news/screens/news_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "news";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerItem(onDrwerClick),
      appBar: AppBar(
        title: Text("News App",
            style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w100,
            )),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Color(0xff39A552),
        centerTitle: true,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
            borderSide: BorderSide(
              color: Colors.transparent,
            )),
      ),
      body: model == null
          ? CategoriesScreen(onCategoryColick)
          : NewsScreen(model!),
    );
  }

  CategoryModel? model = null;

  onCategoryColick(categoryModel) {
    model = categoryModel;
    setState(() {});
  }

  onDrwerClick(number) {
    if (number == DrawerItem.CATEGORY) {
      model == null;
      Navigator.pop(context);
      setState(() {});
    } else if (number == DrawerItem.SETTINGS) {}
  }
}
