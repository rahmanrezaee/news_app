// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsStore on NewsStoreBast, Store {
  final _$newsListAtom = Atom(name: 'NewsStoreBast.newsList');

  @override
  List<Article>? get newsList {
    _$newsListAtom.reportRead();
    return super.newsList;
  }

  @override
  set newsList(List<Article>? value) {
    _$newsListAtom.reportWrite(value, super.newsList, () {
      super.newsList = value;
    });
  }

  final _$fetchNewsAsyncAction = AsyncAction('NewsStoreBast.fetchNews');

  @override
  Future<Map<dynamic, dynamic>> fetchNews() {
    return _$fetchNewsAsyncAction.run(() => super.fetchNews());
  }

  @override
  String toString() {
    return '''
newsList: ${newsList}
    ''';
  }
}
