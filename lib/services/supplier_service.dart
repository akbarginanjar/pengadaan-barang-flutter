import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pengadaanbarang/models/supplier_model.dart';

class SupplierService {
  static Future<SupplierModel> fetchSupplierData() async {
    final response = await http.get(
        Uri.parse('https://pengadaan-barang00.herokuapp.com/api/supplier'));

    if (response.statusCode == 200) {
      var data = response.body;
      return SupplierModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
