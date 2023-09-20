import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  String language = "en";

  void changelanguage(String lang) {
    language = lang;
    notifyListeners();
  }
}
