import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pengadaanbarang/models/user_model.dart';

class UserService {
  static Future<UserModel> fetchUserData() async {
    final response = await http
        .get(Uri.parse('https://pengadaan-barang00.herokuapp.com/api/user'));

    if (response.statusCode == 200) {
      var data = response.body;
      return UserModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
