import 'package:flutter/material.dart';
import 'package:news/My_provider.dart';
import 'package:provider/provider.dart';

class BottonSheetLang extends StatelessWidget {
  const BottonSheetLang({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              pro.changelanguage("ar");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [Text("Arabic"), Spacer(), Icon(Icons.done)],
              ),
            ),
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
            endIndent: 50,
            indent: 50,
          ),
          InkWell(
            onTap: () {
              pro.changelanguage("en");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [Text("English"), Spacer(), Icon(Icons.done)],
              ),
            ),
          )
        ],
      ),
    );
  }
}
