import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:toonflix_clone_coding/003/models/webtoon.dart';

class ApiService {
  static const String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<Webtoon>> getTodaysToons() async {
    List<Webtoon> webtoonInstances = [];

    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);

      for (var webtoon in webtoons) {
        webtoonInstances.add(Webtoon.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
