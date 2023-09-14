import 'package:flutter/material.dart';
import 'package:news/screens/source-item.dart';

class SourcesTitle extends StatefulWidget {
  List<Sources>sources;
  int index;

  SourcesTitle(this.sources, this.index);

  @override
  State<SourcesTitle> createState() => _SourcesTitleState();
}





class _SourcesTitleState extends State<SourcesTitle> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: widget.sources.length,
      child: TabBar(
        onTap: (value) {
          widget.index=value;
          setState(() {

          });
        },
        indicatorColor: Colors.transparent,
        isScrollable: true,
        tabs: widget.sources.map((e) {
          return SourceItem(
              e.name ?? "", widget.sources.indexOf(e) == widget.index);
        }).toList(),
      ),

    );
  }
}
