import 'package:newsapp/Models/newsArticle.dart';

class NewsArticleViewModel {
  // '_' mean private field
  NewsArticle _mNewsArticle;

  NewsArticleViewModel({NewsArticle newsArticle}) : _mNewsArticle = newsArticle;

  String get title {
    return _mNewsArticle.title;
  }

  String get description {
    return _mNewsArticle.description;
  }

  String get imageURL {
    return _mNewsArticle.urlToImage;
    //_mNewsArticle.urlToImage
  }

  String get url {
    return _mNewsArticle.url;
  }
}
