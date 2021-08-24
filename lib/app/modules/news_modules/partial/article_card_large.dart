import 'package:flutter/material.dart';
import 'package:modules_test_project/app/modules/news_modules/model/Article.dart';

class ArticleCardLarge extends StatelessWidget {
  const ArticleCardLarge(this.article);
  @required
  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => null,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              article.getImageUrl,
              fit: BoxFit.cover,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              child: Text(article.name ?? "",
                  style: Theme.of(context).textTheme.bodyText2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(article.title ?? "",
                  style: Theme.of(context).textTheme.headline6),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Text(article.getPublishedAtFormattedTime,
                  style: Theme.of(context).textTheme.caption),
            ),
          ],
        ),
      ),
    );
  }
}
