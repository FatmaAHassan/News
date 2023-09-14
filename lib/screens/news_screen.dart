import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/screens/sources_title.dart';
import 'package:news/shared/network/remote/api_manager.dart';

class NewsScreen extends StatelessWidget {
  static const String routeName = "news";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("News App",
            style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w100,
            )),
        actions: [IconButton(onPressed: () {}
            , icon: Icon(Icons.search))],
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
      body: FutureBuilder(
        future: ApiManager.getSources(),
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
      ),
    );
  }
}
