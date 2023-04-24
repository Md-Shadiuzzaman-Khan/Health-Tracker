import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> login(String email, String password) async {
  final response = await http.post(
    Uri.parse('https://api.jobfid.com/api/login'),
    body: jsonEncode(<String, String>{'email': email, 'password': password}),
    headers: <String, String>{'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data;
  } else {
    throw Exception('Failed to login.');
  }
}
