import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipeapp/models/usda.dart';

class ApiService {
  final String baseUrl = 'https://api.nal.usda.gov/fdc/v1/'; // Replace with the actual base URL of the API
  final String apiKey = 'YOUR_API_KEY'; // Replace with your USDA API key

  Future<Usda2> fetchFoodData(String query) async {
    final response = await http.get(Uri.parse('$baseUrl/search?query=$query&api_key=$apiKey'));

    if (response.statusCode == 200) {
      return Usda2.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load food data');
    }
  }
}
