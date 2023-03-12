import 'package:app_fluttercamp/models/info_server.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AppRepository {
  static Future<InfoServer?> getData() async {
    try {
      var url = Uri.parse(
          "https://newsapi.org/v2/everything?q=bitcoin&apiKey=379d06376ab24f3299fab1ba0b034b30&pageSize=100");
      var res = await http.get(url);
      return infoServerFromJson(res.body);
    } catch (e) {
      if (kDebugMode) {
        print(e);
        print("Error al traer los datos");
      }
      return null;
    }
  }
}
