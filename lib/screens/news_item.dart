import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/NewsDataModels.dart';

class NewsItem extends StatelessWidget {
  Articles articles;

  NewsItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
          child: Column(
            children: [
              Image.network(
                articles.urlToImage ?? "",
                width: double.infinity,
                fit: BoxFit.fill,
                height: 232,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                articles.title ?? "",
                maxLines: 2,
                style: GoogleFonts.aBeeZee(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                articles.description ?? "",
                style: GoogleFonts.quicksand(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.black26,
                  // color: Color(0xFF16161a33)
                  // ,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    articles.author ?? "",
                    style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  Text(articles.publishedAt?.substring(0, 10) ?? ""),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
