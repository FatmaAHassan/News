import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/models/NewsDataModels.dart';
import 'package:news/models/SourcesResponse.dart';
import 'package:news/shared/components/constans.dart';

class ApiManager {


  static Future<SourcesResponse> getSources(String categoryId) async {
    Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources",
        {"apiKey": "72da3eb8a82f44f2b9fd6239ab36bb44", "category": categoryId});

    var response = await http.get(url);
    print(response.body);
    var jsonData = jsonDecode(response.body);

    SourcesResponse sourcesResponse = SourcesResponse.fromJson(jsonData);
    return sourcesResponse;
  }

  static Future<NewsDataModels> getNewData(String sourceId)async {
    Uri url = Uri.https(Constants.BASE_URL, "/v2/everything",
        {"apikey": Constants.API_KEY, "sources": sourceId});
   var response =await  http.get(url);
   var jsonData=jsonDecode(response.body);
   NewsDataModels newsDataModels=NewsDataModels.fromJson(jsonData);
 return newsDataModels;
  }
}



