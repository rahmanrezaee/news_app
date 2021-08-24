import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:modules_test_project/app/modules/news_modules/model/Article.dart';
import 'package:modules_test_project/app/modules/news_modules/service/news_service.dart';

part 'news_store.g.dart';

class NewsStore = NewsStoreBast with _$NewsStore;

abstract class NewsStoreBast with Store {
  final NewsService newsSerice;

  NewsStoreBast({required this.newsSerice});

  @observable
  List<Article>? newsList;

  @action
  Future<Map> fetchNews() async {
    try {
      print("start tp fetch Data");
      Map reponse = await this.newsSerice.getNewsList();

      print("reponse : " + reponse.toString());

      if (reponse["status"]) {
        this.newsList = reponse["data"];
        return {"status": true, "message": "Succecfully Fetch Data"};
      } else {
        return {"status": false, "message": reponse["message"]};
      }
    } catch (e) {
      print(e);
      return {"status": false, "message": "Error In Fetch Data fetchNews"};
    }
  }
}
