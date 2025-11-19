import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_config.dart';

class UserService {
  static Future<List<dynamic>> fetchUsers() async {
    final uri = Uri.parse(ApiConfig.baseUrl + ApiConfig.usersEndpoint);

    final response = await http
        .get(uri, headers: ApiConfig.headers)
        .timeout(Duration(seconds: ApiConfig.timeoutSeconds));

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List<dynamic>;
    } else {
      throw Exception(
          'Gagal mengambil data. Status code: ${response.statusCode}');
    }
  }
}
