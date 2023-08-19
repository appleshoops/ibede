import 'dart:convert';
import 'package:http/http.dart' as http;

class ApodModel {
  static const String _baseUrl = 'https://api.nasa.gov/planetary/apod';
  static const String _apiKey = 'z2Q4C3ED0id24aE6aTFnRecnKtU6UGApbdxhiEQ6';

  Future<List<Apod>> getApodList(int count) async {
    final response = await http.get(Uri.parse('$_baseUrl?api_key=$_apiKey&count=$count'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      final sortedData = List<Map<String, dynamic>>.from(data)
        ..sort((a, b) => b['date'].compareTo(a['date']));
      return sortedData.map((apodData) => Apod.fromJson(apodData)).toList();
    } else {
      throw Exception('Failed to load APOD list');
    }
  }
}

class Apod {
  final String imageUrl;
  final String title;
  final String description;
  final String date;

  Apod({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.date,
  });

  factory Apod.fromJson(Map<String, dynamic> json) {
    return Apod(
      imageUrl: json['url'],
      title: json['title'],
      description: json['explanation'],
      date: json['date'],
    );
  }
}