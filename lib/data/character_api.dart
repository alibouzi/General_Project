import 'dart:async';
import 'package:http/http.dart' as http;

class CharacterApi {
  static Future getCharacters() {
    return http.get("https://petstore.swagger.io/v2/pet/findByStatus?status=available");
  }
}
