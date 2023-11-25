import 'package:http/http.dart';

class NetworkService{

  static final String baseUri = "65606ee083aba11d99d0cb16.mockapi.io";
  static final String api = "/person";

  static Future<String> getData(String api) async {
    Uri uri = Uri.https(baseUri, api);
    Response response = await get(uri);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return response.statusCode.toString();
    }
  }
}