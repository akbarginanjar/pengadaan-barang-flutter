import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:pengadaanbarang/models/barangmasuk_model.dart';
import 'package:pengadaanbarang/services/barang_service.dart';
import 'package:pengadaanbarang/services/barangmasuk_service.dart';

class BarangMasukController extends GetxController {
  var barangmasukList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBarangMasukData();
  }

  void fetchBarangMasukData() async {
    try {
      isLoading(true);
      var barangmasukService = BarangMasukService;
      var barangmasuks = await BarangMasukService.fetchBarangMasukData();
      barangmasukList.value = barangmasuks.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
