import 'package:flutter_modular/flutter_modular.dart';
import 'package:modules_test_project/app/modules/news_modules/pages/news_list.dart';
import 'package:modules_test_project/app/modules/news_modules/service/news_service.dart';
import 'package:modules_test_project/app/modules/news_modules/store/news_store.dart';

class NewsModules extends Module {
  // Provide a list of dependencies to inject into your project

 
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => NewsService()),
    Bind.singleton((i) => NewsStore(newsSerice: i.get())),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/", child: (_, arge) => NewsList())
  ];
}
