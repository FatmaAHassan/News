import 'package:flutter/material.dart';
import 'package:news/BottonSheetLang.dart';
import 'package:news/My_provider.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language"),
          InkWell(
            onTap: () {
              BottomSheetLanguage(context);
            },
            child: Container(
              margin: EdgeInsets.all(8),
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text(pro.language == "ar" ? "arabic" : "English"),
            ),
          ),
        ],
      ),
    );
  }

  BottomSheetLanguage(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return BottonSheetLang();
      },
    );
  }
}
