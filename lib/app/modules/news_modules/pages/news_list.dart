import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modules_test_project/app/modules/news_modules/partial/article_list.dart';

import 'package:modules_test_project/app/modules/news_modules/service/news_service.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _content(context),
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      children: <Widget>[
        _header(context),
        SizedBox(height: 7),
        _body(),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Categories', style: Theme.of(context).textTheme.headline6),
        Container(width: 60),
      ],
    );
  }

  Widget _body() {
    return Expanded(child: ArticleList());
  }
}
