import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/config.dart';

class AIService {
  static Future<String> ask(String prompt) async {
    final res = await http.post(
      Uri.parse(Config.backendUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"prompt": prompt}),
    );
    return res.body;
  }
}
