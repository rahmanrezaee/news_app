import 'package:flutter_modular/flutter_modular.dart';

import 'package:modules_test_project/app/modules/news_modules/news_modules.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      Modular.initialRoute,
      module: NewsModules(),
    ),
  ];
}
