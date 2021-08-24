import 'package:dio/dio.dart';
import 'package:modules_test_project/app/modules/news_modules/model/Article.dart';

class NewsService {
  Dio dio = new Dio();
  Future<Map> getNewsList() async {
    try {
      Response news = await dio.get(
          "http://api.mediastack.com/v1/news?access_key=43b297dea43a4e52a3acd12890dbb182&languages=en,-de");

      List<Article> tempList = [];

      List newsList = news.data["data"];
      newsList.forEach((element) {
        tempList.add(Article.fromMap(element));
      });

      return {"status": true, "data": tempList};
    } on DioError catch (e) {
      print("error in get list");
      if (e.response != null) {
        print(e.response!.data);
      } else {
        print(e.response!.data);
      }
      return {"status": true, "data": e.response!.data};
    }
  }
}
