import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:pengadaanbarang/models/barang_model.dart';
import 'package:pengadaanbarang/services/barang_service.dart';

class BarangController extends GetxController {
  var barangList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBarangData();
  }

  void fetchBarangData() async {
    try {
      isLoading(true);
      var barangService = BarangService;
      var barangs = await BarangService.fetchBarangData();
      barangList.value = barangs.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
