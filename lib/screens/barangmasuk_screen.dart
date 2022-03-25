import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:pengadaanbarang/controllers/barang_controller.dart';
import 'package:pengadaanbarang/controllers/barangmasuk_controller.dart';
import 'package:pengadaanbarang/controllers/supplier_controller.dart';
import 'package:pengadaanbarang/models/supplier_model.dart';
import 'package:pengadaanbarang/models/barangmasuk_model.dart';

import '../controllers/user_controller.dart';

class BarangMasukScreen extends StatelessWidget {
  const BarangMasukScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BarangMasukController barangmasukcontroller =
        Get.put(BarangMasukController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'DATA BARANG',
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Obx(
              () => barangmasukcontroller.isLoading()
                  ? Center(child: const CircularProgressIndicator())
                  : Center(
                      child: ListView.builder(
                      itemCount: barangmasukcontroller.barangmasukList.length,
                      itemBuilder: (content, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 320,
                              height: 180,
                              margin: EdgeInsets.only(bottom: 8, top: 8),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    Color.fromARGB(255, 14, 116, 3),
                                    Color.fromARGB(255, 35, 193, 40),
                                    Color.fromARGB(255, 2, 147, 7)
                                  ],
                                  center: Alignment(0.9, -0.8),
                                  focal: Alignment(0.3, -0.5),
                                  focalRadius: 2.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(95, 63, 63, 63),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Kode barang : ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangmasukcontroller
                                              .barangmasukList[index]
                                              .kodeBarangMasuk
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Nama barang : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangmasukcontroller
                                              .barangmasukList[index].barang
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Supplier : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangmasukcontroller
                                              .barangmasukList[index].supplier
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Pelaku : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangmasukcontroller
                                              .barangmasukList[index].pelaku
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Jumlah Masuk : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangmasukcontroller
                                              .barangmasukList[index].qty
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Tanggal Masuk : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            barangmasukcontroller
                                                .barangmasukList[index]
                                                .tanggalMasuk
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    )),
            ),
          ),
        ),
      ),
    );
  }
}
