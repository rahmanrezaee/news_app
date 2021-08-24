import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modules_test_project/app/modules/news_modules/partial/article_card_large.dart';

import 'package:modules_test_project/app/modules/news_modules/store/news_store.dart';

class ArticleList extends StatelessWidget {
  NewsStore articles = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return articles.newsList != null
          ? ListView.builder(
              itemCount: articles.newsList!.length,
              itemBuilder: (BuildContext context, int index) {
                return ArticleCardLarge(articles.newsList![index]);
              },
            )
          : FutureBuilder(
              future: articles.fetchNews(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                print("snapshot.data : " + snapshot.data.toString());
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return Text("error in fetching");
                }
              },
            );
    });
  }
}
