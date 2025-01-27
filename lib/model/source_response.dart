class SourceResponse {
  String? status;
  List<Source>? sources;
  String? code;
  String? message;

  SourceResponse({this.status, this.sources, this.code, this.message});

  SourceResponse.fromJson(Map<String, dynamic> json) {
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["sources"] is List) {
      sources = json["sources"] == null
          ? null
          : (json["sources"] as List).map((e) => Source.fromJson(e)).toList();
    }
    code = json['code'];
    message = json['message'];
  }

  static List<SourceResponse> fromList(List<Map<String, dynamic>> list) {
    return list.map(SourceResponse.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    if (sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Source {
  String? id;
  String? name;
  String? description;
  String? url;
  String? category;
  String? language;
  String? country;

  Source(
      {this.id,
      this.name,
      this.description,
      this.url,
      this.category,
      this.language,
      this.country});

  Source.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["language"] is String) {
      language = json["language"];
    }
    if (json["country"] is String) {
      country = json["country"];
    }
  }

  static List<Source> fromList(List<Map<String, dynamic>> list) {
    return list.map(Source.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["description"] = description;
    _data["url"] = url;
    _data["category"] = category;
    _data["language"] = language;
    _data["country"] = country;
    return _data;
  }
}
