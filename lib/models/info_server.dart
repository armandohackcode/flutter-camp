// To parse this JSON data, do
//
//     final infoServer = infoServerFromJson(jsonString);

import 'dart:convert';

InfoServer infoServerFromJson(String str) =>
    InfoServer.fromJson(json.decode(str));

String infoServerToJson(InfoServer data) => json.encode(data.toJson());

class InfoServer {
  InfoServer({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  String status;
  int totalResults;
  List<Article> articles;

  InfoServer copyWith({
    String? status,
    int? totalResults,
    List<Article>? articles,
  }) =>
      InfoServer(
        status: status ?? this.status,
        totalResults: totalResults ?? this.totalResults,
        articles: articles ?? this.articles,
      );

  factory InfoServer.fromJson(Map<String, dynamic> json) => InfoServer(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
      };
}

class Article {
  Article({
    required this.source,
    this.author,
    required this.title,
    required this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Source source;
  String? author;
  String title;
  String description;
  String url;
  String? urlToImage;
  DateTime publishedAt;
  String content;

  Article copyWith({
    Source? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    DateTime? publishedAt,
    String? content,
  }) =>
      Article(
        source: source ?? this.source,
        author: author ?? this.author,
        title: title ?? this.title,
        description: description ?? this.description,
        url: url ?? this.url,
        urlToImage: urlToImage ?? this.urlToImage,
        publishedAt: publishedAt ?? this.publishedAt,
        content: content ?? this.content,
      );

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"] ?? "",
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": source.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}

class Source {
  Source({
    this.id,
    required this.name,
  });

  String? id;
  String name;

  Source copyWith({
    String? id,
    String? name,
  }) =>
      Source(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
