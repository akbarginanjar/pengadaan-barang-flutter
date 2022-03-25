import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pengadaanbarang/models/barang_model.dart';

class BarangService {
  static Future<BarangModel> fetchBarangData() async {
    final response = await http
        .get(Uri.parse('https://pengadaan-barang00.herokuapp.com/api/barang'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BarangModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
