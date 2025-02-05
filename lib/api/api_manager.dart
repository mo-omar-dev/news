import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/api_constants.dart';
import 'package:news/api/end_points.dart';
import 'package:news/model/news_response.dart';
import 'package:news/model/source_response.dart';

class ApiManager {
  // https://newsapi.org/v2/top-headlines/sources?apiKey=aa5c4f1ec2234e61adc89b47d453897d
  static Future<SourceResponse?> getSources(String categoryId) async {
    try {
      var response = await http.get(Uri.https(
          ApiConstants.baseUrl,
          EndPoints.sourceApi,
          {'apiKey': ApiConstants.apiKey, 'category': categoryId}));
      return SourceResponse.fromJson(jsonDecode(response.body));
    } catch (e) {
      rethrow;
    }
  }

  // https://newsapi.org/v2/everything?q=bitcoin&apiKey=aa5c4f1ec2234e61adc89b47d453897d
  static Future<NewsResponse> getNews(String sourceId) async {
    try {
      var response = await http.get(Uri.https(
          ApiConstants.baseUrl,
          EndPoints.newsApi,
          {'apiKey': ApiConstants.apiKey, 'sources': sourceId}));
      return NewsResponse.fromJson(jsonDecode(response.body));
    } catch (e) {
      rethrow;
    }
  }
}
