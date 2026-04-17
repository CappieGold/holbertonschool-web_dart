import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    Map<String, dynamic> data = jsonDecode(response.body);
    List<dynamic> results = data['results'];
    for (var character in results) {
      print(character['name']);
    }
  } catch (e) {
    print('error caught: $e');
  }
}
