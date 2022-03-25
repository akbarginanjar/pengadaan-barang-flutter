import 'package:get/instance_manager.dart';
import 'package:pengadaanbarang/controllers/barang_controller.dart';
import 'package:pengadaanbarang/controllers/barangmasuk_controller.dart';

import 'controllers/user_controller.dart';
import 'controllers/supplier_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put<AlbumController>(AlbumController());
    Get.put<UserController>(UserController());
    Get.put<BarangMasukController>(BarangMasukController());
    Get.put<BarangController>(BarangController());
    Get.put<SupplierController>(SupplierController());
  }
}
