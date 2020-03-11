import 'package:flutter/material.dart';
import 'package:newsapp/Models/newsArticle.dart';
import 'package:newsapp/Services/WebService.dart';
import 'package:newsapp/viewModels/newsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();

  NewsArticleListViewModel() {
    _populateTopHeadLines();
  }


  //populate data
  void _populateTopHeadLines() async {
    List<NewsArticle> newArticles = await WevService().fetchTopHeadLines();

    // i'm   getting new article from web then pass it to  NewsArticleViewModel to create a list of that class
    this.articles = newArticles
        .map((article) => NewsArticleViewModel(newsArticle: article))
        .toList();

    notifyListeners();
  }
}
