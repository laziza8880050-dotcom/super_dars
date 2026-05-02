// To parse this JSON data, do
//
//     final newModel = newModelFromJson(jsonString);


class NewModel {
  String status;
  int totalResults;
  List<Article> articles;

  NewModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewModel.fromJson(Map<String, dynamic> json) => NewModel(
        status: json["status"] ?? "",
        totalResults: json["totalResults"] ?? 0,
        articles: json["articles"] == null
            ? []
            : List<Article>.from(
                json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
      };
}

class Article {
  Source? source; // Сделал nullable, так как источник бывает пуст
  String? author;
  String title;
  String? description; // Сделал nullable
  String url;
  String? urlToImage;
  DateTime? publishedAt; // Сделал nullable на всякий случай
  String? content; // Сделал nullable

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: json["source"] == null ? null : Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"] ?? "No Title",
        description: json["description"] ?? "",
        url: json["url"] ?? "",
        urlToImage: json["urlToImage"] ?? "",
        publishedAt: json["publishedAt"] == null 
            ? null 
            : DateTime.tryParse(json["publishedAt"].toString()),
        content: json["content"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "source": source?.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt?.toIso8601String(),
        "content": content,
      };
}

class Source {
  String? id;
  String name;

  Source({
    required this.id,
    required this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"] ?? "Unknown",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
