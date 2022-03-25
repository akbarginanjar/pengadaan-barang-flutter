import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pengadaanbarang/models/barangmasuk_model.dart';

class BarangMasukService {
  static Future<BarangMasukModel> fetchBarangMasukData() async {
    final response = await http.get(
        Uri.parse('https://pengadaan-barang00.herokuapp.com/api/barang-masuk'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BarangMasukModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
