class BarangModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangModel({
    required this.success,
    required this.message,
    required this.data,
  });

  BarangModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? kodeBarang;
  String? namaBarang;
  int? stok;
  String? jenis;
  String? satuan;

  Data({
    required this.kodeBarang,
    required this.namaBarang,
    required this.stok,
    required this.jenis,
    required this.satuan,
  });

  Data.fromJson(Map<String, dynamic> json) {
    kodeBarang = json['kode_barang'];
    namaBarang = json['nama_barang'];
    stok = json['stok'];
    jenis = json['jenis'];
    satuan = json['satuan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_barang'] = this.kodeBarang;
    data['nama_barang'] = this.namaBarang;
    data['stok'] = this.stok;
    data['jenis'] = this.jenis;
    data['satuan'] = this.satuan;
    return data;
  }
}
