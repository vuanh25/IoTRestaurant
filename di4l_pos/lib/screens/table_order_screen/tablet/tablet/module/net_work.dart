// ignore_for_file: depend_on_referenced_packages
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'post_food.dart';

class NetworkRequest {
  static const String url = 'https://jsonplaceholder.typicode.com/posts';
  static List<PostFood> parsePost(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<PostFood> posts = list
        .map((model) => PostFood.fromJson(model))
        .toList(); // Sửa từ "mode" thành "model"
    return posts;
  }

  static Future<List<PostFood>> fetchPosts({int page = 1}) async {
    final response = await http
        .get(Uri.parse(url)); // Sửa từ 'as Uri' thành 'Uri.parse(url)'
    if (response.statusCode == 200) {
      return compute(
          parsePost, response.body); // Gỡ bỏ cast và tham số không cần thiết
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can Not get post');
    }
  }
}
