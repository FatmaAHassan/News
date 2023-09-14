import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:news/screens/source-item.dart';
import 'package:news/shared/network/remote/api_manager.dart';

class SourcesTitle extends StatefulWidget {
  List<Sources> sources;

  SourcesTitle(this.sources);

  @override
  State<SourcesTitle> createState() => _SourcesTitleState();
}
class _SourcesTitleState extends State<SourcesTitle> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: TabBar(
            onTap: (value) {
              index = value;
              setState(() {});
            },
            indicatorColor: Colors.transparent,
            isScrollable: true,
            tabs: widget.sources.map((e) {
              return SourceItem(
                  e.name ?? "", widget.sources.indexOf(e) == index);
            }).toList(),
          ),
        ),
        FutureBuilder(
          future: ApiManager.getNewData(widget.sources[index].id ?? ""),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text("Somthing Went Wrong"));
            }
            var articles = snapshot.data?.articles ?? [];
            return ListView.builder(
              itemBuilder: (context, index) {
                return Text(articles[index].title ?? "");
              },
              itemCount: articles.length,
            );
          },
        )
      ],
    );
  }
}
