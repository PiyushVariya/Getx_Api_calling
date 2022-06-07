import 'package:getx_demo/model/api_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:shared_preferences/shared_preferences.dart';

 SharedPreferences? preferences;

class GetApiClass {
  Future<List<User>?> getData() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      List jsonresponse = convert.jsonDecode(response.body);
      preferences?.setString('user', response.body);
      return jsonresponse.map((e) => User.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
