import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/Models/newsArticle.dart';

class WevService {


  // getting data from urls
  Future<List<NewsArticle>> fetchTopHeadLines() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=1da4644189c24823aaa542f2005bff38";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result['articles'];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      throw Exception("Error ");
    }
  }
}
