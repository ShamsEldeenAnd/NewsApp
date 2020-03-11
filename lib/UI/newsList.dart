import 'package:flutter/material.dart';
import 'package:newsapp/viewModels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Top News"),
      ),
      body: ListView.separated(
        itemCount: vm.articles.length,
        itemBuilder: (context, index) {
          final article = vm.articles[index];
          return ListTile(
            leading: Container(
                width: 100,
                height: 100,
                child: FadeInImage.assetNetwork(
                  placeholder: "images/newsimage.jpg",
                  image: (article.imageURL != null)
                      ? article.imageURL
                      : "images/newsimage.jpg",
                )),
            title: Text(
              article.title,
              style: Theme.of(context).textTheme.body1,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
