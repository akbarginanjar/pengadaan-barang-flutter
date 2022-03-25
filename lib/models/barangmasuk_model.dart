class BarangMasukModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangMasukModel({
    required this.success,
    required this.message,
    required this.data,
  });

  BarangMasukModel.fromJson(Map<String, dynamic> json) {
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
  String? kodeBarangMasuk;
  String? tanggalMasuk;
  String? supplier;
  String? barang;
  int? qty;
  String? pelaku;

  Data({
    required this.kodeBarangMasuk,
    required this.tanggalMasuk,
    required this.supplier,
    required this.barang,
    required this.qty,
    required this.pelaku,
  });

  Data.fromJson(Map<String, dynamic> json) {
    kodeBarangMasuk = json['kode_barang_masuk'];
    tanggalMasuk = json['tanggal_masuk'];
    supplier = json['supplier'];
    barang = json['barang'];
    qty = json['qty'];
    pelaku = json['pelaku'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_barang_masuk'] = this.kodeBarangMasuk;
    data['tanggal_masuk'] = this.tanggalMasuk;
    data['supplier'] = this.supplier;
    data['barang'] = this.barang;
    data['qty'] = this.qty;
    data['pelaku'] = this.pelaku;
    return data;
  }
}
