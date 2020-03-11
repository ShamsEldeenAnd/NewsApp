import 'package:flutter/material.dart';
import 'package:newsapp/UI/newsList.dart';
import 'package:newsapp/viewModels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Fresh News ",
        home: ChangeNotifierProvider(
          create: (context) => NewsArticleListViewModel(),
          child: NewsList(),
        ));
  }
}
