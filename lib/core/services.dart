import 'dart:convert';

import 'package:http/http.dart' as http;

class PostMenuOrder {
  Future<http.Response> insertOrder({List? item, String? name}) async {
    String uri = "http://192.168.0.100:3000/user/insert_menu";
    var response = await http.post(
      Uri.parse(uri),
      body: jsonEncode(
        <String, dynamic>{"name": name, "item": jsonEncode(item)},
      ),
      headers: {'Content-Type': 'application/json'},
    );
    return response;
  }
}
