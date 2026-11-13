import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/photo.dart';

class Api {
  static const String apiKey = 'mv_live_5db7948feef2f81c2f23b889df1c752424135c90';

  static Future<List<Photo>> getPhotos() async {
    final url = Uri.parse(
      'https://api.marsvista.dev/api/v1/rovers/spirit/photos?sol=90',
    );

    final response = await http.get(
      url,
      headers: {
        'X-API-Key': apiKey,
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List photosJson = data['photos'];

      return photosJson
          .map((photo) => Photo.fromJson(photo))
          .toList();
    } else {
      throw Exception(
        'Ошибка загрузки фотографий: ${response.statusCode}. ${response.body}',
      );
    }
  }
}