import 'dart:convert';

class Article {
  String? id;
  String? name;
  String? author;
  String? title;
  String? content;
  String? imagePath;
  String? publishedAt;

  Article({
    this.name,
    this.author,
    this.title,
    this.content,
    this.imagePath,
    this.publishedAt,
    this.id,
  });

  String get getImageUrl => '$imagePath';

  String get getPublishedAtFormattedTime {
    return (DateTime.now()
                .difference(DateTime.parse(publishedAt ?? ""))
                .inHours <
            1)
        ? DateTime.now()
                .difference(DateTime.parse(publishedAt ?? ""))
                .inMinutes
                .toString() +
            'm ago'
        : DateTime.now()
                .difference(DateTime.parse(publishedAt ?? ""))
                .inHours
                .toString() +
            'h ago';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'author': author,
      'title': title,
      'content': content,
      'urlToImage': imagePath,
      'publishedAt': publishedAt,
    };
  }

  factory Article.fromMap(Map map) {
    return Article(
      author: map['author'],
      title: map['title'],
      content: map['description'],
      imagePath: map['image'] ??
          "https://kishtwar.nic.in/wp-content/themes/district-theme-3/images/news.jpg",
      publishedAt: map['published_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String name) => Article.fromMap(json.decode(name));
}
